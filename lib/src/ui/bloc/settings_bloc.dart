import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:anitrack/i18n/strings.g.dart';
import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/manga.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/service/database.dart';
import 'package:anitrack/src/ui/bloc/anime_list_bloc.dart';
import 'package:archive/archive.dart' as archive;
import 'package:archive/archive_io.dart';
import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';
import 'package:jikan_api/jikan_api.dart';
import 'package:path/path.dart' as path;
import 'package:xml/xml.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

MediumTrackingState malStatusToTrackingState(String status) {
  switch (status) {
    case 'Completed':
      return MediumTrackingState.completed;
    case 'Reading':
    case 'Watching':
      return MediumTrackingState.ongoing;
    case 'Plan to Read':
    case 'Plan to Watch':
      return MediumTrackingState.planned;
    case 'Dropped':
      return MediumTrackingState.dropped;
    case 'On-Hold':
      return MediumTrackingState.paused;
    default:
      assert(false, 'Invalid status $status');
      return MediumTrackingState.planned;
  }
}

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsState()) {
    on<AnimeListImportedEvent>(_onAnimeListImported);
    on<MangaListImportedEvent>(_onMangaListImported);
    on<DataExportedEvent>(_onDataExported);
    on<DataImportedEvent>(_onDataImported);
  }

  void _showLoadingSpinner(Emitter<SettingsState> emit) {
    emit(
      state.copyWith(
        importSpinnerVisible: true,
      ),
    );
  }

  void _hideLoadingSpinner(Emitter<SettingsState> emit) {
    emit(
      state.copyWith(
        importSpinnerVisible: false,
      ),
    );
  }

  Future<void> _onAnimeListImported(
    AnimeListImportedEvent event,
    Emitter<SettingsState> emit,
  ) async {
    assert(
      event.type == ImportListType.mal,
      'Only MAL imports are currently supported',
    );

    _showLoadingSpinner(emit);
    final inputStream = InputFileStream(event.path);
    final listRaw = GZipDecoder().decodeBuffer(inputStream);
    final listXml = utf8.decode(listRaw);
    final document = XmlDocument.parse(listXml);
    final mal = document.getElement('myanimelist');
    if (mal == null) {
      print('Invalid MAL list export');
      _hideLoadingSpinner(emit);
      return;
    }

    emit(
      state.copyWith(
        importCurrent: 0,
        importTotal: mal.childElements.length - 1,
      ),
    );

    for (final anime in mal.childElements) {
      if (anime.qualifiedName == 'myinfo') {
        continue;
      }

      emit(
        state.copyWith(
          importCurrent: state.importCurrent + 1,
        ),
      );

      final title = anime.getElement('series_title')!.text;
      final totalEpisodes =
          int.parse(anime.getElement('series_episodes')!.text);
      final id = anime.getElement('series_animedb_id')!.text;

      print('Waiting 500ms to not hammer Jikan ($title)');
      await Future<void>.delayed(const Duration(milliseconds: 500));

      // Query the MAL api
      final data = await Jikan().getAnime(int.parse(id));

      // Add the anime
      await GetIt.I.get<DatabaseService>().addAnime(
            AnimeTrackingData(
              id,
              malStatusToTrackingState(
                anime.getElement('my_status')!.text,
              ),
              title,
              int.parse(anime.getElement('my_watched_episodes')!.text),
              // 0 means that MAL does not know
              totalEpisodes == 0 ? null : totalEpisodes,
              data.imageUrl,
              // NOTE: When the calendar gets refreshed, this should also get cleared
              true,
              null,
            ),
          );
    }

    // Hide the spinner again
    _hideLoadingSpinner(emit);
  }

  Future<void> _onMangaListImported(
    MangaListImportedEvent event,
    Emitter<SettingsState> emit,
  ) async {
    assert(
      event.type == ImportListType.mal,
      'Only MAL imports are currently supported',
    );

    _showLoadingSpinner(emit);
    final inputStream = InputFileStream(event.path);
    final listRaw = GZipDecoder().decodeBuffer(inputStream);
    final listXml = utf8.decode(listRaw);
    final document = XmlDocument.parse(listXml);
    final mal = document.getElement('myanimelist');
    if (mal == null) {
      print('Invalid MAL list export');
      _hideLoadingSpinner(emit);
      return;
    }

    emit(
      state.copyWith(
        importCurrent: 0,
        importTotal: mal.childElements.length - 1,
      ),
    );

    for (final manga in mal.childElements) {
      if (manga.qualifiedName == 'myinfo') {
        continue;
      }

      emit(
        state.copyWith(
          importCurrent: state.importCurrent + 1,
        ),
      );

      final title = manga.getElement('manga_title')!.text;
      final totalChapters = int.parse(manga.getElement('manga_chapters')!.text);
      final id = manga.getElement('manga_mangadb_id')!.text;

      print('Waiting 500ms to not hammer Jikan ($title)');
      await Future<void>.delayed(const Duration(milliseconds: 500));

      // Query the MAL api
      Manga data;
      try {
        data = await Jikan().getManga(int.parse(id));
      } catch (_) {
        print('API request failed');
        continue;
      }

      // Add the manga
      await GetIt.I.get<DatabaseService>().addManga(
            MangaTrackingData(
              id,
              malStatusToTrackingState(
                manga.getElement('my_status')!.text,
              ),
              title,
              int.parse(manga.getElement('my_read_chapters')!.text),
              0,
              // 0 means that MAL does not know
              totalChapters == 0 ? null : totalChapters,
              data.imageUrl,
            ),
          );
    }

    // Hide the spinner again
    _hideLoadingSpinner(emit);
  }

  Future<void> _onDataExported(
    DataExportedEvent event,
    Emitter<SettingsState> emit,
  ) async {
    final al = GetIt.I.get<AnimeListBloc>();
    final data = {
      // TODO(Unknown): Track the version here to (maybe) to migrations
      'animes': al.state.animes.map((anime) => anime.toJson()).toList(),
      'mangas': al.state.mangas.map((manga) => manga.toJson()).toList(),
    };
    final exportData = jsonEncode(data);
    final date = DateTime.now();
    final outputPath = path.join(
      event.path,
      'anitrack_${date.year}${date.month}${date.day}.json.gz',
    );
    archive.GZipEncoder().encode(
      InputStream(utf8.encode(exportData)),
      output: OutputFileStream(outputPath),
    );

    await Fluttertoast.showToast(
      msg: t.settings.dataExportSuccess,
    );
  }

  Future<void> _onDataImported(
    DataImportedEvent event,
    Emitter<SettingsState> emit,
  ) async {
    final al = GetIt.I.get<AnimeListBloc>();
    final exportArchive = archive.GZipDecoder().decodeBytes(
      await File(event.path).readAsBytes(),
    );
    final json = jsonDecode(utf8.decode(exportArchive)) as Map<String, dynamic>;

    // Process anime
    for (final animeRaw
        in (json['animes']! as List<dynamic>).cast<Map<dynamic, dynamic>>()) {
      final anime = AnimeTrackingData.fromJson(
        animeRaw.cast<String, dynamic>(),
      );

      al.add(
        AnimeAddedEvent(anime, checkIfExists: true),
      );
    }

    // Process manga
    for (final mangaRaw
        in (json['mangas']! as List<dynamic>).cast<Map<dynamic, dynamic>>()) {
      final manga = MangaTrackingData.fromJson(
        mangaRaw.cast<String, dynamic>(),
      );

      al.add(
        MangaAddedEvent(manga, checkIfExists: true),
      );
    }

    await Fluttertoast.showToast(
      msg: t.settings.dataImportSuccess,
    );
  }
}

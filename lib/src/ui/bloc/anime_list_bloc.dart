import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/manga.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/service/database.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

part 'anime_list_state.dart';
part 'anime_list_event.dart';
part 'anime_list_bloc.freezed.dart';

class AnimeListBloc extends Bloc<AnimeListEvent, AnimeListState> {
  AnimeListBloc() : super(AnimeListState()) {
    on<AnimeAddedEvent>(_onAnimeAdded);
    on<MangaAddedEvent>(_onMangaAdded);
    on<AnimeEpisodeIncrementedEvent>(_onAnimeIncremented);
    on<AnimeEpisodeDecrementedEvent>(_onAnimeDecremented);
    on<AnimesLoadedEvent>(_onAnimesLoaded);
    on<AnimeFilterChangedEvent>(_onAnimesFiltered);
    on<AnimeTrackingTypeChanged>(_onTrackingTypeChanged);
    on<MangaFilterChangedEvent>(_onMangasFiltered);
    on<MangaChapterIncrementedEvent>(_onMangaIncremented);
    on<MangaChapterDecrementedEvent>(_onMangaDecremented);
    on<AnimeUpdatedEvent>(_onAnimeUpdated);
    on<MangaUpdatedEvent>(_onMangaUpdated);
    on<AnimeRemovedEvent>(_onAnimeRemoved);
    on<MangaRemovedEvent>(_onMangaRemoved);
    on<AddButtonVisibilitySetEvent>(_onButtonVisibilityToggled);
  }

  /// Internal anime state
  final List<AnimeTrackingData> _animes =
      List<AnimeTrackingData>.empty(growable: true);
  final List<MangaTrackingData> _mangas =
      List<MangaTrackingData>.empty(growable: true);

  List<AnimeTrackingData> _getFilteredAnime({
    MediumTrackingState? trackingState,
  }) {
    final filterState = trackingState ?? state.animeFilterState;

    if (filterState == MediumTrackingState.all) return _animes;

    return _animes.where((anime) => anime.state == filterState).toList();
  }

  List<MangaTrackingData> _getFilteredManga({
    MediumTrackingState? trackingState,
  }) {
    final filterState = trackingState ?? state.mangaFilterState;

    if (state.mangaFilterState == MediumTrackingState.all) return _mangas;

    return _mangas.where((manga) => manga.state == filterState).toList();
  }

  Future<void> _onAnimeAdded(
    AnimeAddedEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    // Add the anime to the database
    await GetIt.I.get<DatabaseService>().addAnime(event.data);

    // Add it to the cache
    if (event.checkIfExists) {
      final shouldAdd =
          _animes.firstWhereOrNull((element) => element.id == event.data.id) ==
              null;
      if (shouldAdd) {
        _animes.add(event.data);
      }
    } else {
      _animes.add(event.data);
    }

    emit(
      state.copyWith(
        animes: _getFilteredAnime(),
      ),
    );
  }

  Future<void> _onMangaAdded(
    MangaAddedEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    // Add the manga to the database
    await GetIt.I.get<DatabaseService>().addManga(event.data);

    // Add it to the cache
    // Add it to the cache
    if (event.checkIfExists) {
      final shouldAdd =
          _mangas.firstWhereOrNull((element) => element.id == event.data.id) ==
              null;
      if (shouldAdd) {
        _mangas.add(event.data);
      }
    } else {
      _mangas.add(event.data);
    }

    emit(
      state.copyWith(
        mangas: _getFilteredManga(),
      ),
    );
  }

  Future<void> _onAnimeIncremented(
    AnimeEpisodeIncrementedEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    final index = state.animes.indexWhere((item) => item.id == event.id);
    if (index == -1) return;

    final anime = state.animes[index];
    if (anime.episodesTotal != null &&
        anime.episodesWatched + 1 > anime.episodesTotal!) return;

    final newList = List<AnimeTrackingData>.from(state.animes);
    final newAnime = anime.copyWith(
      episodesWatched: anime.episodesWatched + 1,
    );
    newList[index] = newAnime;

    emit(
      state.copyWith(
        animes: newList,
      ),
    );

    await GetIt.I.get<DatabaseService>().updateAnime(newAnime);
  }

  Future<void> _onAnimeDecremented(
    AnimeEpisodeDecrementedEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    final index = state.animes.indexWhere((item) => item.id == event.id);
    if (index == -1) return;

    final anime = state.animes[index];
    if (anime.episodesWatched - 1 < 0) return;

    final newList = List<AnimeTrackingData>.from(state.animes);
    final newAnime = anime.copyWith(
      episodesWatched: anime.episodesWatched - 1,
    );
    newList[index] = newAnime;

    emit(
      state.copyWith(
        animes: newList,
      ),
    );

    await GetIt.I.get<DatabaseService>().updateAnime(newAnime);
  }

  Future<void> _onAnimesLoaded(
    AnimesLoadedEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    _animes.addAll(
      await GetIt.I.get<DatabaseService>().loadAnimes(),
    );
    _mangas.addAll(
      await GetIt.I.get<DatabaseService>().loadMangas(),
    );

    emit(
      state.copyWith(
        animes: _getFilteredAnime(),
        mangas: _getFilteredManga(),
      ),
    );
  }

  Future<void> _onAnimesFiltered(
    AnimeFilterChangedEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    emit(
      state.copyWith(
        animeFilterState: event.filterState,
        animes: _getFilteredAnime(trackingState: event.filterState),
      ),
    );
  }

  Future<void> _onMangasFiltered(
    MangaFilterChangedEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    emit(
      state.copyWith(
        mangaFilterState: event.filterState,
        mangas: _getFilteredManga(trackingState: event.filterState),
      ),
    );
  }

  Future<void> _onTrackingTypeChanged(
    AnimeTrackingTypeChanged event,
    Emitter<AnimeListState> emit,
  ) async {
    emit(
      state.copyWith(
        trackingType: event.type,
        buttonVisibility: true,
      ),
    );
  }

  Future<void> _onMangaIncremented(
    MangaChapterIncrementedEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    final index = state.mangas.indexWhere((item) => item.id == event.id);
    assert(index != -1, 'The manga must exist');

    final manga = state.mangas[index];
    if (manga.chaptersTotal != null &&
        manga.chaptersRead + 1 > manga.chaptersTotal!) return;

    final newList = List<MangaTrackingData>.from(state.mangas);
    final newManga = manga.copyWith(
      chaptersRead: manga.chaptersRead + 1,
    );
    newList[index] = newManga;

    // Update the cache
    final cacheIndex = _mangas.indexWhere((m) => m.id == event.id);
    assert(cacheIndex != -1, 'The manga must exist');
    _mangas[cacheIndex] = newManga;

    emit(
      state.copyWith(
        mangas: newList,
      ),
    );

    await GetIt.I.get<DatabaseService>().updateManga(newManga);
  }

  Future<void> _onMangaDecremented(
    MangaChapterDecrementedEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    final index = state.mangas.indexWhere((item) => item.id == event.id);
    if (index == -1) return;

    final manga = state.mangas[index];
    if (manga.chaptersRead - 1 < 0) return;

    final newList = List<MangaTrackingData>.from(state.mangas);
    final newManga = manga.copyWith(
      chaptersRead: manga.chaptersRead - 1,
    );
    newList[index] = newManga;

    // Update the cache
    final cacheIndex = _mangas.indexWhere((m) => m.id == event.id);
    assert(cacheIndex != -1, 'The manga must exist');
    _mangas[cacheIndex] = newManga;

    emit(
      state.copyWith(
        mangas: newList,
      ),
    );

    await GetIt.I.get<DatabaseService>().updateManga(newManga);
  }

  Future<void> _onAnimeUpdated(
    AnimeUpdatedEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    final index = _animes.indexWhere((anime) => anime.id == event.anime.id);
    assert(index != -1, 'The anime must exist');

    _animes[index] = event.anime;

    emit(
      state.copyWith(
        animes: _getFilteredAnime(),
      ),
    );

    await GetIt.I.get<DatabaseService>().updateAnime(event.anime);
  }

  Future<void> _onMangaUpdated(
    MangaUpdatedEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    final index = _mangas.indexWhere((manga) => manga.id == event.manga.id);
    assert(index != -1, 'The manga must exist');

    _mangas[index] = event.manga;

    emit(
      state.copyWith(
        mangas: _getFilteredManga(),
      ),
    );
  }

  Future<void> _onAnimeRemoved(
    AnimeRemovedEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    emit(
      state.copyWith(
        animes: List.from(
          state.animes.where((anime) => anime.id != event.id),
        ),
      ),
    );

    // Update the cache
    final cacheIndex = _mangas.indexWhere((m) => m.id == event.id);
    assert(cacheIndex != -1, 'The anime must exist');
    _mangas.removeAt(cacheIndex);

    // Update the database
    await GetIt.I.get<DatabaseService>().deleteAnime(event.id);
  }

  Future<void> _onMangaRemoved(
    MangaRemovedEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    emit(
      state.copyWith(
        mangas: List.from(
          state.mangas.where((manga) => manga.id != event.id),
        ),
      ),
    );

    // Update the cache
    final cacheIndex = _animes.indexWhere((a) => a.id == event.id);
    assert(cacheIndex != -1, 'The manga must exist');
    _animes.removeAt(cacheIndex);

    // Update the database
    await GetIt.I.get<DatabaseService>().deleteManga(event.id);
  }

  Future<void> _onButtonVisibilityToggled(
    AddButtonVisibilitySetEvent event,
    Emitter<AnimeListState> emit,
  ) async {
    emit(
      state.copyWith(
        buttonVisibility: event.state,
      ),
    );
  }
}

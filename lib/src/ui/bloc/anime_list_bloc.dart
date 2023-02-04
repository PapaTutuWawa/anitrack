import 'dart:math';
import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/manga.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/service/database.dart';
import 'package:bloc/bloc.dart';
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
  }

  Future<void> _onAnimeAdded(AnimeAddedEvent event, Emitter<AnimeListState> emit) async {
    // Add the anime to the database
    await GetIt.I.get<DatabaseService>().addAnime(event.data);

    emit(
      state.copyWith(
        animes: List.from([
          ...state.animes,
          event.data,
        ]),
      ),
    );
  }

  Future<void> _onMangaAdded(MangaAddedEvent event, Emitter<AnimeListState> emit) async {
    // Add the manga to the database
    await GetIt.I.get<DatabaseService>().addManga(event.data);

    emit(
      state.copyWith(
        mangas: List.from([
          ...state.mangas,
          event.data,
        ]),
      ),
    );
  }
  
  Future<void> _onAnimeIncremented(AnimeEpisodeIncrementedEvent event, Emitter<AnimeListState> emit) async {
    final index = state.animes.indexWhere((item) => item.id == event.id);
    if (index == -1) return;

    final anime = state.animes[index];
    if (anime.episodesTotal != null && anime.episodesWatched + 1 > anime.episodesTotal!) return;

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

  Future<void> _onAnimeDecremented(AnimeEpisodeDecrementedEvent event, Emitter<AnimeListState> emit) async {
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

  Future<void> _onAnimesLoaded(AnimesLoadedEvent event, Emitter<AnimeListState> emit) async {
    emit(
      state.copyWith(
        animes: await GetIt.I.get<DatabaseService>().loadAnimes(),
        mangas: await GetIt.I.get<DatabaseService>().loadMangas(),
      ),
    );
  }

  Future<void> _onAnimesFiltered(AnimeFilterChangedEvent event, Emitter<AnimeListState> emit) async {
    emit(
      state.copyWith(
        animeFilterState: event.filterState,
      ),
    );
  }

  Future<void> _onMangasFiltered(MangaFilterChangedEvent event, Emitter<AnimeListState> emit) async {
    emit(
      state.copyWith(
        mangaFilterState: event.filterState,
      ),
    );
  }
  
  Future<void> _onTrackingTypeChanged(AnimeTrackingTypeChanged event, Emitter<AnimeListState> emit) async {
    emit(
      state.copyWith(
        trackingType: event.type,
      ),
    );
  }

  Future<void> _onMangaIncremented(MangaChapterIncrementedEvent event, Emitter<AnimeListState> emit) async {
    final index = state.mangas.indexWhere((item) => item.id == event.id);
    if (index == -1) return;

    final manga = state.mangas[index];
    if (manga.chaptersTotal != null && manga.chaptersRead + 1 > manga.chaptersTotal!) return;

    final newList = List<MangaTrackingData>.from(state.mangas);
    final newManga = manga.copyWith(
      chaptersRead: manga.chaptersRead + 1,
    );
    newList[index] = newManga;

    emit(
      state.copyWith(
        mangas: newList,
      ),
    );

    await GetIt.I.get<DatabaseService>().updateManga(newManga);
  }

  Future<void> _onMangaDecremented(MangaChapterDecrementedEvent event, Emitter<AnimeListState> emit) async {
    final index = state.mangas.indexWhere((item) => item.id == event.id);
    if (index == -1) return;

    final manga = state.mangas[index];
    if (manga.chaptersRead - 1 < 0) return;

    final newList = List<MangaTrackingData>.from(state.mangas);
    final newManga = manga.copyWith(
      chaptersRead: manga.chaptersRead - 1,
    );
    newList[index] = newManga;

    emit(
      state.copyWith(
        mangas: newList,
      ),
    );

    await GetIt.I.get<DatabaseService>().updateManga(newManga);
  }
}

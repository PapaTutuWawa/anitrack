import 'dart:math';
import 'package:anitrack/src/data/anime.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_list_state.dart';
part 'anime_list_event.dart';
part 'anime_list_bloc.freezed.dart';

class AnimeListBloc extends Bloc<AnimeListEvent, AnimeListState> {
  AnimeListBloc() : super(AnimeListState()) {
    on<AnimeAddedEvent>(_onAnimeAdded);
    on<AnimeEpisodeIncrementedEvent>(_onIncremented);
    on<AnimeEpisodeDecrementedEvent>(_onDecremented);
  }

  // TODO: Remove
  Future<void> _onAnimeAdded(AnimeAddedEvent event, Emitter<AnimeListState> emit) async {
    emit(
      state.copyWith(
        animes: List.from([
          ...state.animes,
          event.data,
        ]),
      ),
    );
  }

  Future<void> _onIncremented(AnimeEpisodeIncrementedEvent event, Emitter<AnimeListState> emit) async {
    final index = state.animes.indexWhere((item) => item.id == event.id);
    if (index == -1) return;

    final anime = state.animes[index];
    if (anime.episodesTotal != null && anime.episodesWatched + 1 > anime.episodesTotal!) return;

    final newList = List<AnimeTrackingData>.from(state.animes);
    newList[index] = anime.copyWith(
      anime.episodesWatched + 1,
    );

    emit(
      state.copyWith(
        animes: newList,
      ),
    );
    print('${event.id} incremented');
  }

  Future<void> _onDecremented(AnimeEpisodeDecrementedEvent event, Emitter<AnimeListState> emit) async {
    final index = state.animes.indexWhere((item) => item.id == event.id);
    if (index == -1) return;

    final anime = state.animes[index];
    if (anime.episodesWatched - 1 < 0) return;

    final newList = List<AnimeTrackingData>.from(state.animes);
    newList[index] = anime.copyWith(
      anime.episodesWatched - 1,
    );

    emit(
      state.copyWith(
        animes: newList,
      ),
    );
    print('${event.id} decremented');
  }
}

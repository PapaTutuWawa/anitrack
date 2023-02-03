part of 'anime_list_bloc.dart';

@freezed
class AnimeListState with _$AnimeListState {
  factory AnimeListState({
    @Default([]) List<AnimeTrackingData> animes,
  }) = _AnimeListState;
}

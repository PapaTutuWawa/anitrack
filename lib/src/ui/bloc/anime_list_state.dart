part of 'anime_list_bloc.dart';

@freezed
class AnimeListState with _$AnimeListState {
  factory AnimeListState({
    @Default([]) List<AnimeTrackingData> animes,
    @Default(AnimeTrackingState.watching) AnimeTrackingState filterState,
    @Default(TrackingMediumType.anime) TrackingMediumType trackingType,
  }) = _AnimeListState;
}

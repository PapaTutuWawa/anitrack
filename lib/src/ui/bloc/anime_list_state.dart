part of 'anime_list_bloc.dart';

@freezed
class AnimeListState with _$AnimeListState {
  factory AnimeListState({
    @Default([]) List<AnimeTrackingData> animes,
    @Default([]) List<MangaTrackingData> mangas,
    @Default(AnimeTrackingState.watching) AnimeTrackingState animeFilterState,
    @Default(MangaTrackingState.reading) MangaTrackingState mangaFilterState,
    @Default(TrackingMediumType.anime) TrackingMediumType trackingType,
  }) = _AnimeListState;
}

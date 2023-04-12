part of 'anime_list_bloc.dart';

@freezed
class AnimeListState with _$AnimeListState {
  factory AnimeListState({
    @Default(true) bool buttonVisibility,
    @Default([]) List<AnimeTrackingData> animes,
    @Default([]) List<MangaTrackingData> mangas,
    @Default(MediumTrackingState.ongoing) MediumTrackingState animeFilterState,
    @Default(MediumTrackingState.ongoing) MediumTrackingState mangaFilterState,
    @Default(TrackingMediumType.anime) TrackingMediumType trackingType,
  }) = _AnimeListState;
}

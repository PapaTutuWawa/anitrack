part of 'anime_search_bloc.dart';

@freezed
class AnimeSearchState with _$AnimeSearchState {
  factory AnimeSearchState({
    @Default(TrackingMediumType.anime) TrackingMediumType trackingType,
    @Default('') String searchQuery,
    @Default(false) bool working,
    @Default([]) List<SearchResult> searchResults,
  }) = _AnimeSearchState;
}

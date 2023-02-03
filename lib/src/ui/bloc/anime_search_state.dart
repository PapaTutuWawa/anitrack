part of 'anime_search_bloc.dart';

@freezed
class AnimeSearchState with _$AnimeSearchState {
  factory AnimeSearchState({
    @Default('') String searchQuery,
    @Default(false) bool working,
    @Default([]) List<AnimeSearchResult> searchResults,
  }) = _AnimeSearchState;
}

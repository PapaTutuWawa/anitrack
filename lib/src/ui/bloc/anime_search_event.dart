part of 'anime_search_bloc.dart';

abstract class AnimeSearchEvent {}

class AnimeSearchRequestedEvent extends AnimeSearchEvent {}

/// Triggered when the search query is changed.
class SearchQueryChangedEvent extends AnimeSearchEvent {
  SearchQueryChangedEvent(this.query);
  
  /// The current value of the query
  final String query;
}

/// Triggered when the search is submitted.
class SearchQuerySubmittedEvent extends AnimeSearchEvent {}

/// Triggered when an anime is added to the tracking list
class AnimeAddedEvent extends AnimeSearchEvent {
  AnimeAddedEvent(this.result);

  /// The search result to add.
  final AnimeSearchResult result;
}

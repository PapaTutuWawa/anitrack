part of 'anime_search_bloc.dart';

abstract class AnimeSearchEvent {}

class AnimeSearchRequestedEvent extends AnimeSearchEvent {
  AnimeSearchRequestedEvent(this.type);

  /// The tracking type for which we want to search
  TrackingMediumType type;
}

/// Triggered when the search query is changed.
class SearchQueryChangedEvent extends AnimeSearchEvent {
  SearchQueryChangedEvent(this.query);
  
  /// The current value of the query
  final String query;
}

/// Triggered when the search is submitted.
class SearchQuerySubmittedEvent extends AnimeSearchEvent {}

/// Triggered when an anime is added to the tracking list
class ResultTappedEvent extends AnimeSearchEvent {
  ResultTappedEvent(this.result);

  /// The search result to add.
  final SearchResult result;
}

part of 'anime_list_bloc.dart';

abstract class AnimeListEvent {}

class AnimeEpisodeIncrementedEvent extends AnimeListEvent {
  AnimeEpisodeIncrementedEvent(this.id);

  /// The ID of the anime
  final String id;
}

class AnimeEpisodeDecrementedEvent extends AnimeListEvent {
  AnimeEpisodeDecrementedEvent(this.id);

  /// The ID of the anime
  final String id;
}

class AnimeAddedEvent extends AnimeListEvent {
  AnimeAddedEvent(this.data);
  
  /// The anime to add.
  final AnimeTrackingData data;
}

/// Triggered when animes are to be loaded from the database
class AnimesLoadedEvent extends AnimeListEvent {}

/// Triggered when the filter is changed
class AnimeFilterChangedEvent extends AnimeListEvent {
  AnimeFilterChangedEvent(this.filterState);

  /// The state to filter
  final AnimeTrackingState filterState;
}

/// Triggered when the view is changed from the anime or the manga view
class AnimeTrackingTypeChanged extends AnimeListEvent {
  AnimeTrackingTypeChanged(this.type);

  /// The type we switched to
  final TrackingMediumType type;
}

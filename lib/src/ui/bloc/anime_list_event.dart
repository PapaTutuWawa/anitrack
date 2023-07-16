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
  AnimeAddedEvent(this.data, {this.checkIfExists = false});

  /// The anime to add.
  final AnimeTrackingData data;

  /// If true, checks if the anime with the id is already in the list.
  /// If it is, does nothing.
  final bool checkIfExists;
}

/// Triggered when animes are to be loaded from the database
class AnimesLoadedEvent extends AnimeListEvent {}

/// Triggered when the anime filter is changed
class AnimeFilterChangedEvent extends AnimeListEvent {
  AnimeFilterChangedEvent(this.filterState);

  /// The state to filter
  final MediumTrackingState filterState;
}

/// Triggered when the view is changed from the anime or the manga view
class AnimeTrackingTypeChanged extends AnimeListEvent {
  AnimeTrackingTypeChanged(this.type);

  /// The type we switched to
  final TrackingMediumType type;
}

class AnimeUpdatedEvent extends AnimeListEvent {
  AnimeUpdatedEvent(this.anime, {this.commit = false});

  final AnimeTrackingData anime;

  /// Commit the new anime data to the database.
  final bool commit;
}

class AnimeRemovedEvent extends AnimeListEvent {
  AnimeRemovedEvent(this.id);

  /// The ID of the anime to be removed from the list.
  final String id;
}

class MangaAddedEvent extends AnimeListEvent {
  MangaAddedEvent(this.data, {this.checkIfExists = false});

  /// The manga to add.
  final MangaTrackingData data;

  /// If true, checks if the manga with the id is already in the list.
  /// If it is, does nothing.
  final bool checkIfExists;
}

/// Triggered when the manga filter is changed
class MangaFilterChangedEvent extends AnimeListEvent {
  MangaFilterChangedEvent(this.filterState);

  /// The state to filter
  final MediumTrackingState filterState;
}

class MangaChapterIncrementedEvent extends AnimeListEvent {
  MangaChapterIncrementedEvent(this.id);

  /// The ID of the anime
  final String id;
}

class MangaChapterDecrementedEvent extends AnimeListEvent {
  MangaChapterDecrementedEvent(this.id);

  /// The ID of the anime
  final String id;
}

class MangaUpdatedEvent extends AnimeListEvent {
  MangaUpdatedEvent(this.manga);

  final MangaTrackingData manga;
}

class MangaRemovedEvent extends AnimeListEvent {
  MangaRemovedEvent(this.id);

  /// The ID of the manga to be removed from the list.
  final String id;
}

class AddButtonVisibilitySetEvent extends AnimeListEvent {
  AddButtonVisibilitySetEvent(this.state);

  /// The visibility of the button
  final bool state;
}

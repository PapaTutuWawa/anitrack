part of 'details_bloc.dart';

abstract class DetailsEvent {}

class AnimeDetailsRequestedEvent extends DetailsEvent {
  AnimeDetailsRequestedEvent(
    this.anime, {
    this.heroImagePrefix,
  });

  /// The anime to show details about
  final AnimeTrackingData anime;

  final String? heroImagePrefix;
}

class MangaDetailsRequestedEvent extends DetailsEvent {
  MangaDetailsRequestedEvent(
    this.manga, {
    this.heroImagePrefix,
  });

  /// The manga to show details about
  final MangaTrackingData manga;

  final String? heroImagePrefix;
}

class DetailsUpdatedEvent extends DetailsEvent {
  DetailsUpdatedEvent(this.data);

  final TrackingMedium data;
}

class ItemRemovedEvent extends DetailsEvent {
  ItemRemovedEvent(this.id, this.trackingType);

  /// The ID of the item to be removed
  final String id;

  /// The type of medium of the item
  final TrackingMediumType trackingType;
}

class AnimeWatcherRemovedEvent extends DetailsEvent {
  AnimeWatcherRemovedEvent(this.watcher);

  /// The watcher that was removed
  final AnimeWatcher watcher;
}

class AnimeWatcherAddedEvent extends DetailsEvent {
  AnimeWatcherAddedEvent(this.watcher);

  /// The watcher that was added
  final AnimeWatcher watcher;
}

class AnimeWatcherDeletedEvent extends DetailsEvent {
  AnimeWatcherDeletedEvent(this.watcher);

  /// The watcher that was deleted
  final AnimeWatcher watcher;
}

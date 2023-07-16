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
  MangaDetailsRequestedEvent(this.manga);

  /// The manga to show details about
  final MangaTrackingData manga;
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

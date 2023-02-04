part of 'details_bloc.dart';

abstract class DetailsEvent {}

class AnimeDetailsRequestedEvent extends DetailsEvent {
  AnimeDetailsRequestedEvent(this.anime);

  /// The anime to show details about
  final AnimeTrackingData anime;
}

class MangaDetailsRequestedEvent extends DetailsEvent {
  MangaDetailsRequestedEvent(this.manga);

  /// The manga to show details about
  final MangaTrackingData manga;
}

class DetailsUpdatedEvent extends DetailsEvent {
  DetailsUpdatedEvent(this.data);

  final dynamic data;
}

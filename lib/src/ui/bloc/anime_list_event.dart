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

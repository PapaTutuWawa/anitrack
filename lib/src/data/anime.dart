/// The watch state of an anime
enum AnimeTrackingState {
  watching,
  completed,
  planToWatch,
  dropped,
}

/// Data about a tracked anime
class AnimeTrackingData {
  const AnimeTrackingData(
    this.id,
    this.state,
    this.title,
    this.episodesWatched,
    this.episodesTotal,
    this.thumbnailUrl,
  );

  /// The ID of the anime
  final String id;
  
  /// The state of the anime
  final AnimeTrackingState state;

  /// The title of the anime
  final String title;
  
  /// Episodes in total.
  final int? episodesTotal;

  /// Episodes watched.
  final int episodesWatched;

  /// URL to the thumbnail/cover art for the anime.
  final String thumbnailUrl;

  AnimeTrackingData copyWith(
    int episodesWatched,
  ) {
    return AnimeTrackingData(
      id,
      state,
      title,
      episodesWatched,
      episodesTotal,
      thumbnailUrl,
    );
  }
}

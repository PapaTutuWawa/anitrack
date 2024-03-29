class SearchResult {
  const SearchResult(
    this.title,
    this.id,
    this.total,
    this.thumbnailUrl,
    this.description,
    this.isAiring,
    this.broadcastDay,
  );

  /// The title of the anime.
  final String title;

  /// The id of the anime.
  final String id;

  /// The URL to a thumbnail image.
  final String thumbnailUrl;

  /// The amount of total episodes or chapters. If null, it means that there is not
  /// total amount of episodes set.
  final int? total;

  /// The description of the anime
  final String description;

  /// Flag whether the anime is airing.
  final bool isAiring;

  /// The day of the week the anime is airing.
  final String? broadcastDay;
}

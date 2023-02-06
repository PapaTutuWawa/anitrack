import 'package:anitrack/src/data/type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime.freezed.dart';
part 'anime.g.dart';

/// Data about a tracked anime
@freezed
class AnimeTrackingData with _$AnimeTrackingData{
  factory AnimeTrackingData(
    /// The ID of the anime
    String id,
    /// The state of the anime
    @MediumTrackingStateConverter() MediumTrackingState state,
    /// The title of the anime
    String title,
    /// Episodes in total.
    int episodesWatched,
    /// Episodes watched.
    int? episodesTotal,
    /// URL to the thumbnail/cover art for the anime.
    String thumbnailUrl,
  ) = _AnimeTrackingData;

  /// JSON
  factory AnimeTrackingData.fromJson(Map<String, dynamic> json) => _$AnimeTrackingDataFromJson(json);
}

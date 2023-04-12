import 'package:anitrack/src/data/type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga.freezed.dart';
part 'manga.g.dart';

/// Data about a tracked anime
@freezed
class MangaTrackingData with _$MangaTrackingData, TrackingMedium {
  factory MangaTrackingData(
    /// The ID of the manga
    String id,

    /// The state of the manga
    @MediumTrackingStateConverter() MediumTrackingState state,

    /// The title of the manga
    String title,

    /// Chapters read.
    int chaptersRead,

    /// Chapters read.
    int volumesOwned,

    /// Episodes watched.
    int? chaptersTotal,

    /// URL to the thumbnail/cover art for the manga.
    String thumbnailUrl,
  ) = _MangaTrackingData;

  /// JSON
  factory MangaTrackingData.fromJson(Map<String, dynamic> json) =>
      _$MangaTrackingDataFromJson(json);
}

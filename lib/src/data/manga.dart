import 'package:anitrack/src/data/data_base.dart';
import 'package:anitrack/src/data/other_titles.dart';
import 'package:anitrack/src/data/source.dart';
import 'package:anitrack/src/data/type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga.freezed.dart';
part 'manga.g.dart';

/// Data about a tracked anime
@freezed
abstract class MangaTrackingData
    with _$MangaTrackingData, TrackingMedium
    implements TrackingDataBase {
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

    /// Other titles the manga can have.
    @OtherTitlesConverter() OtherTitles otherTitles,

    /// The source where we got the data from.
    @TrackingDataSourceConverter() TrackingDataSource source,
  ) = _MangaTrackingData;

  MangaTrackingData._();

  /// JSON
  factory MangaTrackingData.fromJson(Map<String, dynamic> json) =>
      _$MangaTrackingDataFromJson(json);
}

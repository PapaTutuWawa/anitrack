import 'package:anitrack/src/data/type.dart';
import 'package:anitrack/src/service/database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime.freezed.dart';
part 'anime.g.dart';

class BoolConverter implements JsonConverter<bool, int> {
  const BoolConverter();

  @override
  bool fromJson(int json) => json.toBool();

  @override
  int toJson(bool object) => object.toInt();
}

/// Data about a tracked anime
@freezed
class AnimeTrackingData with _$AnimeTrackingData, TrackingMedium {
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

    /// Flag whether the anime is airing
    @BoolConverter() bool airing,

    /// The day of the week the anime is airing
    String? broadcastDay,
  ) = _AnimeTrackingData;

  /// JSON
  factory AnimeTrackingData.fromJson(Map<String, dynamic> json) =>
      _$AnimeTrackingDataFromJson(json);
}

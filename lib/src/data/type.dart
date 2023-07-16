import 'package:anitrack/i18n/strings.g.dart';
import 'package:json_annotation/json_annotation.dart';

/// The type of medium we are tracking. Useful for UI stuff.
enum TrackingMediumType {
  anime,
  manga,
}

/// The state of the medium we're tracking, i.e. reading/watching, dropped, ...
enum MediumTrackingState {
  /// Currently watching or reading
  ongoing(0),

  /// Done
  completed(1),

  /// Plan to watch or read
  planned(2),

  /// Dropped
  dropped(3),

  /// Paused
  paused(4),

  /// Meta state
  all(-1);

  const MediumTrackingState(this.id);

  factory MediumTrackingState.fromInt(int id) {
    switch (id) {
      case 0:
        return MediumTrackingState.ongoing;
      case 1:
        return MediumTrackingState.completed;
      case 2:
        return MediumTrackingState.planned;
      case 3:
        return MediumTrackingState.dropped;
      case 4:
        return MediumTrackingState.paused;
    }

    return MediumTrackingState.planned;
  }

  /// The id of the value.
  final int id;

  String getName(TrackingMediumType type) {
    assert(
      this != MediumTrackingState.all,
      'MediumTrackingState.all must not be stringified',
    );

    switch (this) {
      case MediumTrackingState.ongoing:
        switch (type) {
          case TrackingMediumType.anime:
            return t.data.ongoing.anime;
          case TrackingMediumType.manga:
            return t.data.ongoing.manga;
        }
      case MediumTrackingState.completed:
        return t.data.completed;
      case MediumTrackingState.planned:
        switch (type) {
          case TrackingMediumType.anime:
            return t.data.planned.anime;
          case TrackingMediumType.manga:
            return t.data.planned.manga;
        }
      case MediumTrackingState.dropped:
        return t.data.dropped;
      case MediumTrackingState.paused:
        return t.data.paused;
      case MediumTrackingState.all:
        return t.data.all;
    }
  }
}

/// Interface for the Anime and Manga data classes
abstract class TrackingMedium {
  /// The ID of the medium
  final String id = '';

  /// The title of the medium
  final String title = '';

  /// The URL of the cover image.
  final String thumbnailUrl = '';

  /// The tracking state
  final MediumTrackingState state = MediumTrackingState.planned;
}

class MediumTrackingStateConverter
    implements JsonConverter<MediumTrackingState, int> {
  const MediumTrackingStateConverter();

  @override
  MediumTrackingState fromJson(int json) => MediumTrackingState.fromInt(json);

  @override
  int toJson(MediumTrackingState state) => state.id;
}

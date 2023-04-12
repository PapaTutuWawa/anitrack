import 'package:json_annotation/json_annotation.dart';

/// The type of medium we are tracking. Useful for UI stuff.
enum TrackingMediumType {
  anime,
  manga,
}

/// The state of the medium we're tracking, i.e. reading/watching, dropped, ...
enum MediumTrackingState {
  /// Currently watching or reading
  ongoing,

  /// Done
  completed,

  /// Plan to watch or read
  planned,

  /// Dropped
  dropped,

  /// Paused
  paused,

  /// Meta state
  all,
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

extension MediumStateExtension on MediumTrackingState {
  int toInteger() {
    assert(
      this != MediumTrackingState.all,
      'MediumTrackingState.all must not be serialized',
    );
    switch (this) {
      case MediumTrackingState.ongoing:
        return 0;
      case MediumTrackingState.completed:
        return 1;
      case MediumTrackingState.planned:
        return 2;
      case MediumTrackingState.dropped:
        return 3;
      case MediumTrackingState.paused:
        return 4;
      case MediumTrackingState.all:
        return -1;
    }
  }

  String toNameString(TrackingMediumType type) {
    assert(
      this != MediumTrackingState.all,
      'MediumTrackingState.all must not be stringified',
    );

    switch (this) {
      case MediumTrackingState.ongoing:
        switch (type) {
          case TrackingMediumType.anime:
            return 'Watching';
          case TrackingMediumType.manga:
            return 'Reading';
        }
      case MediumTrackingState.completed:
        return 'Completed';
      case MediumTrackingState.planned:
        switch (type) {
          case TrackingMediumType.anime:
            return 'Plan to watch';
          case TrackingMediumType.manga:
            return 'Plan to read';
        }
      case MediumTrackingState.dropped:
        return 'Dropped';
      case MediumTrackingState.paused:
        return 'Paused';
      case MediumTrackingState.all:
        return 'All';
    }
  }
}

class MediumTrackingStateConverter
    implements JsonConverter<MediumTrackingState, int> {
  const MediumTrackingStateConverter();

  @override
  MediumTrackingState fromJson(int json) {
    switch (json) {
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

  @override
  int toJson(MediumTrackingState state) => state.toInteger();
}

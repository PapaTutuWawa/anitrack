import 'package:freezed_annotation/freezed_annotation.dart';

part 'manga.freezed.dart';
part 'manga.g.dart';

/// The watch state of an manga
enum MangaTrackingState {
  reading,    // 0
  completed,   // 1
  planToRead, // 2
  dropped,     // 3
  /// This is a pseudo state, i.e. it should never be set
  all,         // -1
}

extension MangaTrackStateExtension on MangaTrackingState {
  int toInteger() {
    assert(this != MangaTrackingState.all, 'MangaTrackingState.all must not be serialized');
    switch (this) {
      case MangaTrackingState.reading: return 0;
      case MangaTrackingState.completed: return 1;
      case MangaTrackingState.planToRead: return 2;
      case MangaTrackingState.dropped: return 3;
      case MangaTrackingState.all: return -1;
    }
  }

  String toNameString() {
    assert(this != MangaTrackingState.all, 'MangaTrackingState.all must not be stringified');

    switch (this) {
      case MangaTrackingState.reading: return 'Reading';
      case MangaTrackingState.completed: return 'Completed';
      case MangaTrackingState.planToRead: return 'Plan to read';
      case MangaTrackingState.dropped: return 'Dropped';
      case MangaTrackingState.all: return 'All';
    }
  }
}

class MangaTrackingStateConverter implements JsonConverter<MangaTrackingState, int> {
  const MangaTrackingStateConverter();

  @override
  MangaTrackingState fromJson(int json) {
    switch (json) {
      case 0: return MangaTrackingState.reading;
      case 1: return MangaTrackingState.completed;
      case 2: return MangaTrackingState.planToRead;
      case 3: return MangaTrackingState.dropped;
    }

    return MangaTrackingState.planToRead;
  }
  
  @override
  int toJson(MangaTrackingState state) => state.toInteger();
}

/// Data about a tracked anime
@freezed
class MangaTrackingData with _$MangaTrackingData{
  factory MangaTrackingData(
    /// The ID of the manga
    String id,
    /// The state of the manga
    @MangaTrackingStateConverter() MangaTrackingState state,
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
  factory MangaTrackingData.fromJson(Map<String, dynamic> json) => _$MangaTrackingDataFromJson(json);
}

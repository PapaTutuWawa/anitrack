import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime.freezed.dart';
part 'anime.g.dart';

/// The watch state of an anime
enum AnimeTrackingState {
  watching,    // 0
  completed,   // 1
  planToWatch, // 2
  dropped,     // 3
  /// This is a pseudo state, i.e. it should never be set
  all,         // -1
}

extension AnimeTrackStateExtension on AnimeTrackingState {
  int toInteger() {
    assert(this != AnimeTrackingState.all, 'AnimeTrackingState.all must not be serialized');
    switch (this) {
      case AnimeTrackingState.watching: return 0;
      case AnimeTrackingState.completed: return 1;
      case AnimeTrackingState.planToWatch: return 2;
      case AnimeTrackingState.dropped: return 3;
      case AnimeTrackingState.all: return -1;
    }
  }

  String toNameString() {
    assert(this != AnimeTrackingState.all, 'AnimeTrackingState.all must not be stringified');

    switch (this) {
      case AnimeTrackingState.watching: return 'Watching';
      case AnimeTrackingState.completed: return 'Completed';
      case AnimeTrackingState.planToWatch: return 'Plan to watch';
      case AnimeTrackingState.dropped: return 'Dropped';
      case AnimeTrackingState.all: return 'All';
    }
  }
}

class AnimeTrackingStateConverter implements JsonConverter<AnimeTrackingState, int> {
  const AnimeTrackingStateConverter();

  @override
  AnimeTrackingState fromJson(int json) {
    switch (json) {
      case 0: return AnimeTrackingState.watching;
      case 1: return AnimeTrackingState.completed;
      case 2: return AnimeTrackingState.planToWatch;
      case 3: return AnimeTrackingState.dropped;
    }

    return AnimeTrackingState.planToWatch;
  }
  
  @override
  int toJson(AnimeTrackingState state) => state.toInteger();
}

/// Data about a tracked anime
@freezed
class AnimeTrackingData with _$AnimeTrackingData{
  factory AnimeTrackingData(
    /// The ID of the anime
    String id,
    /// The state of the anime
    @AnimeTrackingStateConverter() AnimeTrackingState state,
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

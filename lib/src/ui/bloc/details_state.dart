part of 'details_bloc.dart';

@freezed
abstract class DetailsState with _$DetailsState {
  factory DetailsState({
    TrackingMedium? data,
    String? heroImagePrefix,
    @Default(TrackingMediumType.anime) TrackingMediumType trackingType,
    @Default([]) List<AnimeWatcher> animeWatchers,
  }) = _DetailsState;
}

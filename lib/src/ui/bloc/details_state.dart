part of 'details_bloc.dart';

@freezed
class DetailsState with _$DetailsState {
  factory DetailsState({
    TrackingMedium? data,
    String? heroImagePrefix,
    @Default(TrackingMediumType.anime) TrackingMediumType trackingType,
  }) = _DetailsState;
}

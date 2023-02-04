part of 'details_bloc.dart';

@freezed
class DetailsState with _$DetailsState {
  factory DetailsState({
    dynamic data,
    @Default(TrackingMediumType.anime) TrackingMediumType trackingType,
  }) = _DetailsState;
}

part of 'calendar_bloc.dart';

@freezed
class CalendarState with _$CalendarState {
  factory CalendarState(
    bool refreshing,
    int refreshingCount,
    int refreshingTotal,
  ) = _CalendarState;
}

part of 'calendar_bloc.dart';

abstract class CalendarEvent {}

/// Triggered by the UI when the user wants to refresh the airing anime list.
class RefreshPerformedEvent extends CalendarEvent {}

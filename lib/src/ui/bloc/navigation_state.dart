part of 'navigation_bloc.dart';

abstract class NavigationState {}

class NoopNavigationState extends NavigationState {}

class PoppedNavigationState extends NavigationState {}

class PushNavigationState extends NavigationState {
  PushNavigationState(this.destination);

  final String destination;
}

class GoNavigationState extends NavigationState {
  GoNavigationState(this.destination);

  final String destination;
}

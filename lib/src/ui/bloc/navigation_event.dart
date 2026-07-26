part of 'navigation_bloc.dart';

class NavigationDestination {
  const NavigationDestination(
    this.path, {
    this.arguments,
  });
  final String path;
  final Object? arguments;
}

abstract class NavigationEvent {}

class GoNavigationEvent extends NavigationEvent {
  GoNavigationEvent(this.destination);
  final String destination;
}

class PushNavigationEvent extends NavigationEvent {
  PushNavigationEvent(this.destination);
  final String destination;
}

class PopNavigationEvent extends NavigationEvent {}

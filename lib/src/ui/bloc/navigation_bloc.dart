import 'dart:async';

import 'package:bloc/bloc.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NoopNavigationState()) {
    on<GoNavigationEvent>(_onGoEvent);
    on<PushNavigationEvent>(_onPushEvent);
    on<PopNavigationEvent>(_onPopEvent);
  }

  Future<void> _onGoEvent(
    GoNavigationEvent event,
    Emitter<NavigationState> emit,
  ) async {
    emit(
      GoNavigationState(event.destination),
    );
  }

  Future<void> _onPushEvent(
    PushNavigationEvent event,
    Emitter<NavigationState> emit,
  ) async {
    emit(
      PushNavigationState(event.destination),
    );
  }

  Future<void> _onPopEvent(
    PopNavigationEvent event,
    Emitter<NavigationState> emit,
  ) async {
    emit(PoppedNavigationState());
  }
}

part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  factory SettingsState({
    @Default(false) bool importSpinnerVisible,
    @Default(0) int importCurrent,
    @Default(0) int importTotal,
  }) = _SettingsState;
}

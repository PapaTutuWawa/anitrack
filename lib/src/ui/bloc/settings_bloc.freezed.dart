// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsState {
  bool get importSpinnerVisible => throw _privateConstructorUsedError;
  int get importCurrent => throw _privateConstructorUsedError;
  int get importTotal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call({bool importSpinnerVisible, int importCurrent, int importTotal});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? importSpinnerVisible = freezed,
    Object? importCurrent = freezed,
    Object? importTotal = freezed,
  }) {
    return _then(_value.copyWith(
      importSpinnerVisible: importSpinnerVisible == freezed
          ? _value.importSpinnerVisible
          : importSpinnerVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      importCurrent: importCurrent == freezed
          ? _value.importCurrent
          : importCurrent // ignore: cast_nullable_to_non_nullable
              as int,
      importTotal: importTotal == freezed
          ? _value.importTotal
          : importTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call({bool importSpinnerVisible, int importCurrent, int importTotal});
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, (v) => _then(v as _$_SettingsState));

  @override
  _$_SettingsState get _value => super._value as _$_SettingsState;

  @override
  $Res call({
    Object? importSpinnerVisible = freezed,
    Object? importCurrent = freezed,
    Object? importTotal = freezed,
  }) {
    return _then(_$_SettingsState(
      importSpinnerVisible: importSpinnerVisible == freezed
          ? _value.importSpinnerVisible
          : importSpinnerVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      importCurrent: importCurrent == freezed
          ? _value.importCurrent
          : importCurrent // ignore: cast_nullable_to_non_nullable
              as int,
      importTotal: importTotal == freezed
          ? _value.importTotal
          : importTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  _$_SettingsState(
      {this.importSpinnerVisible = false,
      this.importCurrent = 0,
      this.importTotal = 0});

  @override
  @JsonKey()
  final bool importSpinnerVisible;
  @override
  @JsonKey()
  final int importCurrent;
  @override
  @JsonKey()
  final int importTotal;

  @override
  String toString() {
    return 'SettingsState(importSpinnerVisible: $importSpinnerVisible, importCurrent: $importCurrent, importTotal: $importTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
            const DeepCollectionEquality()
                .equals(other.importSpinnerVisible, importSpinnerVisible) &&
            const DeepCollectionEquality()
                .equals(other.importCurrent, importCurrent) &&
            const DeepCollectionEquality()
                .equals(other.importTotal, importTotal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(importSpinnerVisible),
      const DeepCollectionEquality().hash(importCurrent),
      const DeepCollectionEquality().hash(importTotal));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  factory _SettingsState(
      {final bool importSpinnerVisible,
      final int importCurrent,
      final int importTotal}) = _$_SettingsState;

  @override
  bool get importSpinnerVisible;
  @override
  int get importCurrent;
  @override
  int get importTotal;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalendarState {
  bool get refreshing => throw _privateConstructorUsedError;
  int get refreshingCount => throw _privateConstructorUsedError;
  int get refreshingTotal => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res>;
  $Res call({bool refreshing, int refreshingCount, int refreshingTotal});
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  final CalendarState _value;
  // ignore: unused_field
  final $Res Function(CalendarState) _then;

  @override
  $Res call({
    Object? refreshing = freezed,
    Object? refreshingCount = freezed,
    Object? refreshingTotal = freezed,
  }) {
    return _then(_value.copyWith(
      refreshing: refreshing == freezed
          ? _value.refreshing
          : refreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshingCount: refreshingCount == freezed
          ? _value.refreshingCount
          : refreshingCount // ignore: cast_nullable_to_non_nullable
              as int,
      refreshingTotal: refreshingTotal == freezed
          ? _value.refreshingTotal
          : refreshingTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_CalendarStateCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$_CalendarStateCopyWith(
          _$_CalendarState value, $Res Function(_$_CalendarState) then) =
      __$$_CalendarStateCopyWithImpl<$Res>;
  @override
  $Res call({bool refreshing, int refreshingCount, int refreshingTotal});
}

/// @nodoc
class __$$_CalendarStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res>
    implements _$$_CalendarStateCopyWith<$Res> {
  __$$_CalendarStateCopyWithImpl(
      _$_CalendarState _value, $Res Function(_$_CalendarState) _then)
      : super(_value, (v) => _then(v as _$_CalendarState));

  @override
  _$_CalendarState get _value => super._value as _$_CalendarState;

  @override
  $Res call({
    Object? refreshing = freezed,
    Object? refreshingCount = freezed,
    Object? refreshingTotal = freezed,
  }) {
    return _then(_$_CalendarState(
      refreshing == freezed
          ? _value.refreshing
          : refreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshingCount == freezed
          ? _value.refreshingCount
          : refreshingCount // ignore: cast_nullable_to_non_nullable
              as int,
      refreshingTotal == freezed
          ? _value.refreshingTotal
          : refreshingTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CalendarState implements _CalendarState {
  _$_CalendarState(this.refreshing, this.refreshingCount, this.refreshingTotal);

  @override
  final bool refreshing;
  @override
  final int refreshingCount;
  @override
  final int refreshingTotal;

  @override
  String toString() {
    return 'CalendarState(refreshing: $refreshing, refreshingCount: $refreshingCount, refreshingTotal: $refreshingTotal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CalendarState &&
            const DeepCollectionEquality()
                .equals(other.refreshing, refreshing) &&
            const DeepCollectionEquality()
                .equals(other.refreshingCount, refreshingCount) &&
            const DeepCollectionEquality()
                .equals(other.refreshingTotal, refreshingTotal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(refreshing),
      const DeepCollectionEquality().hash(refreshingCount),
      const DeepCollectionEquality().hash(refreshingTotal));

  @JsonKey(ignore: true)
  @override
  _$$_CalendarStateCopyWith<_$_CalendarState> get copyWith =>
      __$$_CalendarStateCopyWithImpl<_$_CalendarState>(this, _$identity);
}

abstract class _CalendarState implements CalendarState {
  factory _CalendarState(final bool refreshing, final int refreshingCount,
      final int refreshingTotal) = _$_CalendarState;

  @override
  bool get refreshing;
  @override
  int get refreshingCount;
  @override
  int get refreshingTotal;
  @override
  @JsonKey(ignore: true)
  _$$_CalendarStateCopyWith<_$_CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

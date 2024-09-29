// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarState {
  bool get refreshing => throw _privateConstructorUsedError;
  int get refreshingCount => throw _privateConstructorUsedError;
  int get refreshingTotal => throw _privateConstructorUsedError;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarStateCopyWith<CalendarState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res, CalendarState>;
  @useResult
  $Res call({bool refreshing, int refreshingCount, int refreshingTotal});
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res, $Val extends CalendarState>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshing = null,
    Object? refreshingCount = null,
    Object? refreshingTotal = null,
  }) {
    return _then(_value.copyWith(
      refreshing: null == refreshing
          ? _value.refreshing
          : refreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshingCount: null == refreshingCount
          ? _value.refreshingCount
          : refreshingCount // ignore: cast_nullable_to_non_nullable
              as int,
      refreshingTotal: null == refreshingTotal
          ? _value.refreshingTotal
          : refreshingTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarStateImplCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$$CalendarStateImplCopyWith(
          _$CalendarStateImpl value, $Res Function(_$CalendarStateImpl) then) =
      __$$CalendarStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool refreshing, int refreshingCount, int refreshingTotal});
}

/// @nodoc
class __$$CalendarStateImplCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res, _$CalendarStateImpl>
    implements _$$CalendarStateImplCopyWith<$Res> {
  __$$CalendarStateImplCopyWithImpl(
      _$CalendarStateImpl _value, $Res Function(_$CalendarStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshing = null,
    Object? refreshingCount = null,
    Object? refreshingTotal = null,
  }) {
    return _then(_$CalendarStateImpl(
      null == refreshing
          ? _value.refreshing
          : refreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      null == refreshingCount
          ? _value.refreshingCount
          : refreshingCount // ignore: cast_nullable_to_non_nullable
              as int,
      null == refreshingTotal
          ? _value.refreshingTotal
          : refreshingTotal // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CalendarStateImpl implements _CalendarState {
  _$CalendarStateImpl(
      this.refreshing, this.refreshingCount, this.refreshingTotal);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarStateImpl &&
            (identical(other.refreshing, refreshing) ||
                other.refreshing == refreshing) &&
            (identical(other.refreshingCount, refreshingCount) ||
                other.refreshingCount == refreshingCount) &&
            (identical(other.refreshingTotal, refreshingTotal) ||
                other.refreshingTotal == refreshingTotal));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, refreshing, refreshingCount, refreshingTotal);

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      __$$CalendarStateImplCopyWithImpl<_$CalendarStateImpl>(this, _$identity);
}

abstract class _CalendarState implements CalendarState {
  factory _CalendarState(final bool refreshing, final int refreshingCount,
      final int refreshingTotal) = _$CalendarStateImpl;

  @override
  bool get refreshing;
  @override
  int get refreshingCount;
  @override
  int get refreshingTotal;

  /// Create a copy of CalendarState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarStateImplCopyWith<_$CalendarStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailsState {
  TrackingMedium? get data => throw _privateConstructorUsedError;
  String? get heroImagePrefix => throw _privateConstructorUsedError;
  TrackingMediumType get trackingType => throw _privateConstructorUsedError;

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsStateCopyWith<DetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res, DetailsState>;
  @useResult
  $Res call(
      {TrackingMedium? data,
      String? heroImagePrefix,
      TrackingMediumType trackingType});
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res, $Val extends DetailsState>
    implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? heroImagePrefix = freezed,
    Object? trackingType = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TrackingMedium?,
      heroImagePrefix: freezed == heroImagePrefix
          ? _value.heroImagePrefix
          : heroImagePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingType: null == trackingType
          ? _value.trackingType
          : trackingType // ignore: cast_nullable_to_non_nullable
              as TrackingMediumType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailsStateImplCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$$DetailsStateImplCopyWith(
          _$DetailsStateImpl value, $Res Function(_$DetailsStateImpl) then) =
      __$$DetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrackingMedium? data,
      String? heroImagePrefix,
      TrackingMediumType trackingType});
}

/// @nodoc
class __$$DetailsStateImplCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res, _$DetailsStateImpl>
    implements _$$DetailsStateImplCopyWith<$Res> {
  __$$DetailsStateImplCopyWithImpl(
      _$DetailsStateImpl _value, $Res Function(_$DetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? heroImagePrefix = freezed,
    Object? trackingType = null,
  }) {
    return _then(_$DetailsStateImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TrackingMedium?,
      heroImagePrefix: freezed == heroImagePrefix
          ? _value.heroImagePrefix
          : heroImagePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      trackingType: null == trackingType
          ? _value.trackingType
          : trackingType // ignore: cast_nullable_to_non_nullable
              as TrackingMediumType,
    ));
  }
}

/// @nodoc

class _$DetailsStateImpl implements _DetailsState {
  _$DetailsStateImpl(
      {this.data,
      this.heroImagePrefix,
      this.trackingType = TrackingMediumType.anime});

  @override
  final TrackingMedium? data;
  @override
  final String? heroImagePrefix;
  @override
  @JsonKey()
  final TrackingMediumType trackingType;

  @override
  String toString() {
    return 'DetailsState(data: $data, heroImagePrefix: $heroImagePrefix, trackingType: $trackingType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsStateImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.heroImagePrefix, heroImagePrefix) ||
                other.heroImagePrefix == heroImagePrefix) &&
            (identical(other.trackingType, trackingType) ||
                other.trackingType == trackingType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, data, heroImagePrefix, trackingType);

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsStateImplCopyWith<_$DetailsStateImpl> get copyWith =>
      __$$DetailsStateImplCopyWithImpl<_$DetailsStateImpl>(this, _$identity);
}

abstract class _DetailsState implements DetailsState {
  factory _DetailsState(
      {final TrackingMedium? data,
      final String? heroImagePrefix,
      final TrackingMediumType trackingType}) = _$DetailsStateImpl;

  @override
  TrackingMedium? get data;
  @override
  String? get heroImagePrefix;
  @override
  TrackingMediumType get trackingType;

  /// Create a copy of DetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsStateImplCopyWith<_$DetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

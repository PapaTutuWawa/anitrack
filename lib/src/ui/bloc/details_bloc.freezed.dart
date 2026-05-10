// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DetailsState {

 TrackingMedium? get data; String? get heroImagePrefix; TrackingMediumType get trackingType;
/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailsStateCopyWith<DetailsState> get copyWith => _$DetailsStateCopyWithImpl<DetailsState>(this as DetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailsState&&(identical(other.data, data) || other.data == data)&&(identical(other.heroImagePrefix, heroImagePrefix) || other.heroImagePrefix == heroImagePrefix)&&(identical(other.trackingType, trackingType) || other.trackingType == trackingType));
}


@override
int get hashCode => Object.hash(runtimeType,data,heroImagePrefix,trackingType);

@override
String toString() {
  return 'DetailsState(data: $data, heroImagePrefix: $heroImagePrefix, trackingType: $trackingType)';
}


}

/// @nodoc
abstract mixin class $DetailsStateCopyWith<$Res>  {
  factory $DetailsStateCopyWith(DetailsState value, $Res Function(DetailsState) _then) = _$DetailsStateCopyWithImpl;
@useResult
$Res call({
 TrackingMedium? data, String? heroImagePrefix, TrackingMediumType trackingType
});




}
/// @nodoc
class _$DetailsStateCopyWithImpl<$Res>
    implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._self, this._then);

  final DetailsState _self;
  final $Res Function(DetailsState) _then;

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? heroImagePrefix = freezed,Object? trackingType = null,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TrackingMedium?,heroImagePrefix: freezed == heroImagePrefix ? _self.heroImagePrefix : heroImagePrefix // ignore: cast_nullable_to_non_nullable
as String?,trackingType: null == trackingType ? _self.trackingType : trackingType // ignore: cast_nullable_to_non_nullable
as TrackingMediumType,
  ));
}

}


/// Adds pattern-matching-related methods to [DetailsState].
extension DetailsStatePatterns on DetailsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DetailsState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DetailsState value)  $default,){
final _that = this;
switch (_that) {
case _DetailsState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _DetailsState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TrackingMedium? data,  String? heroImagePrefix,  TrackingMediumType trackingType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DetailsState() when $default != null:
return $default(_that.data,_that.heroImagePrefix,_that.trackingType);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TrackingMedium? data,  String? heroImagePrefix,  TrackingMediumType trackingType)  $default,) {final _that = this;
switch (_that) {
case _DetailsState():
return $default(_that.data,_that.heroImagePrefix,_that.trackingType);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TrackingMedium? data,  String? heroImagePrefix,  TrackingMediumType trackingType)?  $default,) {final _that = this;
switch (_that) {
case _DetailsState() when $default != null:
return $default(_that.data,_that.heroImagePrefix,_that.trackingType);case _:
  return null;

}
}

}

/// @nodoc


class _DetailsState implements DetailsState {
   _DetailsState({this.data, this.heroImagePrefix, this.trackingType = TrackingMediumType.anime});
  

@override final  TrackingMedium? data;
@override final  String? heroImagePrefix;
@override@JsonKey() final  TrackingMediumType trackingType;

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailsStateCopyWith<_DetailsState> get copyWith => __$DetailsStateCopyWithImpl<_DetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailsState&&(identical(other.data, data) || other.data == data)&&(identical(other.heroImagePrefix, heroImagePrefix) || other.heroImagePrefix == heroImagePrefix)&&(identical(other.trackingType, trackingType) || other.trackingType == trackingType));
}


@override
int get hashCode => Object.hash(runtimeType,data,heroImagePrefix,trackingType);

@override
String toString() {
  return 'DetailsState(data: $data, heroImagePrefix: $heroImagePrefix, trackingType: $trackingType)';
}


}

/// @nodoc
abstract mixin class _$DetailsStateCopyWith<$Res> implements $DetailsStateCopyWith<$Res> {
  factory _$DetailsStateCopyWith(_DetailsState value, $Res Function(_DetailsState) _then) = __$DetailsStateCopyWithImpl;
@override @useResult
$Res call({
 TrackingMedium? data, String? heroImagePrefix, TrackingMediumType trackingType
});




}
/// @nodoc
class __$DetailsStateCopyWithImpl<$Res>
    implements _$DetailsStateCopyWith<$Res> {
  __$DetailsStateCopyWithImpl(this._self, this._then);

  final _DetailsState _self;
  final $Res Function(_DetailsState) _then;

/// Create a copy of DetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? heroImagePrefix = freezed,Object? trackingType = null,}) {
  return _then(_DetailsState(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as TrackingMedium?,heroImagePrefix: freezed == heroImagePrefix ? _self.heroImagePrefix : heroImagePrefix // ignore: cast_nullable_to_non_nullable
as String?,trackingType: null == trackingType ? _self.trackingType : trackingType // ignore: cast_nullable_to_non_nullable
as TrackingMediumType,
  ));
}


}

// dart format on

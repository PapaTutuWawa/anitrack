// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CalendarState {

 bool get refreshing; int get refreshingCount; int get refreshingTotal;
/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalendarStateCopyWith<CalendarState> get copyWith => _$CalendarStateCopyWithImpl<CalendarState>(this as CalendarState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalendarState&&(identical(other.refreshing, refreshing) || other.refreshing == refreshing)&&(identical(other.refreshingCount, refreshingCount) || other.refreshingCount == refreshingCount)&&(identical(other.refreshingTotal, refreshingTotal) || other.refreshingTotal == refreshingTotal));
}


@override
int get hashCode => Object.hash(runtimeType,refreshing,refreshingCount,refreshingTotal);

@override
String toString() {
  return 'CalendarState(refreshing: $refreshing, refreshingCount: $refreshingCount, refreshingTotal: $refreshingTotal)';
}


}

/// @nodoc
abstract mixin class $CalendarStateCopyWith<$Res>  {
  factory $CalendarStateCopyWith(CalendarState value, $Res Function(CalendarState) _then) = _$CalendarStateCopyWithImpl;
@useResult
$Res call({
 bool refreshing, int refreshingCount, int refreshingTotal
});




}
/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._self, this._then);

  final CalendarState _self;
  final $Res Function(CalendarState) _then;

/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? refreshing = null,Object? refreshingCount = null,Object? refreshingTotal = null,}) {
  return _then(_self.copyWith(
refreshing: null == refreshing ? _self.refreshing : refreshing // ignore: cast_nullable_to_non_nullable
as bool,refreshingCount: null == refreshingCount ? _self.refreshingCount : refreshingCount // ignore: cast_nullable_to_non_nullable
as int,refreshingTotal: null == refreshingTotal ? _self.refreshingTotal : refreshingTotal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CalendarState].
extension CalendarStatePatterns on CalendarState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalendarState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalendarState value)  $default,){
final _that = this;
switch (_that) {
case _CalendarState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalendarState value)?  $default,){
final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool refreshing,  int refreshingCount,  int refreshingTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
return $default(_that.refreshing,_that.refreshingCount,_that.refreshingTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool refreshing,  int refreshingCount,  int refreshingTotal)  $default,) {final _that = this;
switch (_that) {
case _CalendarState():
return $default(_that.refreshing,_that.refreshingCount,_that.refreshingTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool refreshing,  int refreshingCount,  int refreshingTotal)?  $default,) {final _that = this;
switch (_that) {
case _CalendarState() when $default != null:
return $default(_that.refreshing,_that.refreshingCount,_that.refreshingTotal);case _:
  return null;

}
}

}

/// @nodoc


class _CalendarState implements CalendarState {
   _CalendarState(this.refreshing, this.refreshingCount, this.refreshingTotal);
  

@override final  bool refreshing;
@override final  int refreshingCount;
@override final  int refreshingTotal;

/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalendarStateCopyWith<_CalendarState> get copyWith => __$CalendarStateCopyWithImpl<_CalendarState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalendarState&&(identical(other.refreshing, refreshing) || other.refreshing == refreshing)&&(identical(other.refreshingCount, refreshingCount) || other.refreshingCount == refreshingCount)&&(identical(other.refreshingTotal, refreshingTotal) || other.refreshingTotal == refreshingTotal));
}


@override
int get hashCode => Object.hash(runtimeType,refreshing,refreshingCount,refreshingTotal);

@override
String toString() {
  return 'CalendarState(refreshing: $refreshing, refreshingCount: $refreshingCount, refreshingTotal: $refreshingTotal)';
}


}

/// @nodoc
abstract mixin class _$CalendarStateCopyWith<$Res> implements $CalendarStateCopyWith<$Res> {
  factory _$CalendarStateCopyWith(_CalendarState value, $Res Function(_CalendarState) _then) = __$CalendarStateCopyWithImpl;
@override @useResult
$Res call({
 bool refreshing, int refreshingCount, int refreshingTotal
});




}
/// @nodoc
class __$CalendarStateCopyWithImpl<$Res>
    implements _$CalendarStateCopyWith<$Res> {
  __$CalendarStateCopyWithImpl(this._self, this._then);

  final _CalendarState _self;
  final $Res Function(_CalendarState) _then;

/// Create a copy of CalendarState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? refreshing = null,Object? refreshingCount = null,Object? refreshingTotal = null,}) {
  return _then(_CalendarState(
null == refreshing ? _self.refreshing : refreshing // ignore: cast_nullable_to_non_nullable
as bool,null == refreshingCount ? _self.refreshingCount : refreshingCount // ignore: cast_nullable_to_non_nullable
as int,null == refreshingTotal ? _self.refreshingTotal : refreshingTotal // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_watcher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnimeWatcher {

/// Name of the person to watch the anime with.
 String get name;
/// Create a copy of AnimeWatcher
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimeWatcherCopyWith<AnimeWatcher> get copyWith => _$AnimeWatcherCopyWithImpl<AnimeWatcher>(this as AnimeWatcher, _$identity);

  /// Serializes this AnimeWatcher to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnimeWatcher&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AnimeWatcher(name: $name)';
}


}

/// @nodoc
abstract mixin class $AnimeWatcherCopyWith<$Res>  {
  factory $AnimeWatcherCopyWith(AnimeWatcher value, $Res Function(AnimeWatcher) _then) = _$AnimeWatcherCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$AnimeWatcherCopyWithImpl<$Res>
    implements $AnimeWatcherCopyWith<$Res> {
  _$AnimeWatcherCopyWithImpl(this._self, this._then);

  final AnimeWatcher _self;
  final $Res Function(AnimeWatcher) _then;

/// Create a copy of AnimeWatcher
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AnimeWatcher].
extension AnimeWatcherPatterns on AnimeWatcher {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnimeWatcher value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnimeWatcher() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnimeWatcher value)  $default,){
final _that = this;
switch (_that) {
case _AnimeWatcher():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnimeWatcher value)?  $default,){
final _that = this;
switch (_that) {
case _AnimeWatcher() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnimeWatcher() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _AnimeWatcher():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _AnimeWatcher() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AnimeWatcher extends AnimeWatcher {
   _AnimeWatcher(this.name): super._();
  factory _AnimeWatcher.fromJson(Map<String, dynamic> json) => _$AnimeWatcherFromJson(json);

/// Name of the person to watch the anime with.
@override final  String name;

/// Create a copy of AnimeWatcher
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnimeWatcherCopyWith<_AnimeWatcher> get copyWith => __$AnimeWatcherCopyWithImpl<_AnimeWatcher>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AnimeWatcherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnimeWatcher&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AnimeWatcher(name: $name)';
}


}

/// @nodoc
abstract mixin class _$AnimeWatcherCopyWith<$Res> implements $AnimeWatcherCopyWith<$Res> {
  factory _$AnimeWatcherCopyWith(_AnimeWatcher value, $Res Function(_AnimeWatcher) _then) = __$AnimeWatcherCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$AnimeWatcherCopyWithImpl<$Res>
    implements _$AnimeWatcherCopyWith<$Res> {
  __$AnimeWatcherCopyWithImpl(this._self, this._then);

  final _AnimeWatcher _self;
  final $Res Function(_AnimeWatcher) _then;

/// Create a copy of AnimeWatcher
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_AnimeWatcher(
null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

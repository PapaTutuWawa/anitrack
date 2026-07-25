// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'other_titles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OtherTitles {

 String? get english; String? get japanese; List<String> get others;
/// Create a copy of OtherTitles
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtherTitlesCopyWith<OtherTitles> get copyWith => _$OtherTitlesCopyWithImpl<OtherTitles>(this as OtherTitles, _$identity);

  /// Serializes this OtherTitles to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtherTitles&&(identical(other.english, english) || other.english == english)&&(identical(other.japanese, japanese) || other.japanese == japanese)&&const DeepCollectionEquality().equals(other.others, others));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,english,japanese,const DeepCollectionEquality().hash(others));

@override
String toString() {
  return 'OtherTitles(english: $english, japanese: $japanese, others: $others)';
}


}

/// @nodoc
abstract mixin class $OtherTitlesCopyWith<$Res>  {
  factory $OtherTitlesCopyWith(OtherTitles value, $Res Function(OtherTitles) _then) = _$OtherTitlesCopyWithImpl;
@useResult
$Res call({
 String? english, String? japanese, List<String> others
});




}
/// @nodoc
class _$OtherTitlesCopyWithImpl<$Res>
    implements $OtherTitlesCopyWith<$Res> {
  _$OtherTitlesCopyWithImpl(this._self, this._then);

  final OtherTitles _self;
  final $Res Function(OtherTitles) _then;

/// Create a copy of OtherTitles
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? english = freezed,Object? japanese = freezed,Object? others = null,}) {
  return _then(_self.copyWith(
english: freezed == english ? _self.english : english // ignore: cast_nullable_to_non_nullable
as String?,japanese: freezed == japanese ? _self.japanese : japanese // ignore: cast_nullable_to_non_nullable
as String?,others: null == others ? _self.others : others // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [OtherTitles].
extension OtherTitlesPatterns on OtherTitles {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OtherTitles value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OtherTitles() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OtherTitles value)  $default,){
final _that = this;
switch (_that) {
case _OtherTitles():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OtherTitles value)?  $default,){
final _that = this;
switch (_that) {
case _OtherTitles() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? english,  String? japanese,  List<String> others)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OtherTitles() when $default != null:
return $default(_that.english,_that.japanese,_that.others);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? english,  String? japanese,  List<String> others)  $default,) {final _that = this;
switch (_that) {
case _OtherTitles():
return $default(_that.english,_that.japanese,_that.others);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? english,  String? japanese,  List<String> others)?  $default,) {final _that = this;
switch (_that) {
case _OtherTitles() when $default != null:
return $default(_that.english,_that.japanese,_that.others);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OtherTitles implements OtherTitles {
   _OtherTitles({this.english, this.japanese, final  List<String> others = const []}): _others = others;
  factory _OtherTitles.fromJson(Map<String, dynamic> json) => _$OtherTitlesFromJson(json);

@override final  String? english;
@override final  String? japanese;
 final  List<String> _others;
@override@JsonKey() List<String> get others {
  if (_others is EqualUnmodifiableListView) return _others;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_others);
}


/// Create a copy of OtherTitles
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OtherTitlesCopyWith<_OtherTitles> get copyWith => __$OtherTitlesCopyWithImpl<_OtherTitles>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OtherTitlesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OtherTitles&&(identical(other.english, english) || other.english == english)&&(identical(other.japanese, japanese) || other.japanese == japanese)&&const DeepCollectionEquality().equals(other._others, _others));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,english,japanese,const DeepCollectionEquality().hash(_others));

@override
String toString() {
  return 'OtherTitles(english: $english, japanese: $japanese, others: $others)';
}


}

/// @nodoc
abstract mixin class _$OtherTitlesCopyWith<$Res> implements $OtherTitlesCopyWith<$Res> {
  factory _$OtherTitlesCopyWith(_OtherTitles value, $Res Function(_OtherTitles) _then) = __$OtherTitlesCopyWithImpl;
@override @useResult
$Res call({
 String? english, String? japanese, List<String> others
});




}
/// @nodoc
class __$OtherTitlesCopyWithImpl<$Res>
    implements _$OtherTitlesCopyWith<$Res> {
  __$OtherTitlesCopyWithImpl(this._self, this._then);

  final _OtherTitles _self;
  final $Res Function(_OtherTitles) _then;

/// Create a copy of OtherTitles
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? english = freezed,Object? japanese = freezed,Object? others = null,}) {
  return _then(_OtherTitles(
english: freezed == english ? _self.english : english // ignore: cast_nullable_to_non_nullable
as String?,japanese: freezed == japanese ? _self.japanese : japanese // ignore: cast_nullable_to_non_nullable
as String?,others: null == others ? _self._others : others // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on

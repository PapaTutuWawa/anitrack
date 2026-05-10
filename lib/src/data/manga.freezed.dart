// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MangaTrackingData {

/// The ID of the manga
 String get id;/// The state of the manga
@MediumTrackingStateConverter() MediumTrackingState get state;/// The title of the manga
 String get title;/// Chapters read.
 int get chaptersRead;/// Chapters read.
 int get volumesOwned;/// Episodes watched.
 int? get chaptersTotal;/// URL to the thumbnail/cover art for the manga.
 String get thumbnailUrl;
/// Create a copy of MangaTrackingData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MangaTrackingDataCopyWith<MangaTrackingData> get copyWith => _$MangaTrackingDataCopyWithImpl<MangaTrackingData>(this as MangaTrackingData, _$identity);

  /// Serializes this MangaTrackingData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MangaTrackingData&&(identical(other.id, id) || other.id == id)&&(identical(other.state, state) || other.state == state)&&(identical(other.title, title) || other.title == title)&&(identical(other.chaptersRead, chaptersRead) || other.chaptersRead == chaptersRead)&&(identical(other.volumesOwned, volumesOwned) || other.volumesOwned == volumesOwned)&&(identical(other.chaptersTotal, chaptersTotal) || other.chaptersTotal == chaptersTotal)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,state,title,chaptersRead,volumesOwned,chaptersTotal,thumbnailUrl);

@override
String toString() {
  return 'MangaTrackingData(id: $id, state: $state, title: $title, chaptersRead: $chaptersRead, volumesOwned: $volumesOwned, chaptersTotal: $chaptersTotal, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class $MangaTrackingDataCopyWith<$Res>  {
  factory $MangaTrackingDataCopyWith(MangaTrackingData value, $Res Function(MangaTrackingData) _then) = _$MangaTrackingDataCopyWithImpl;
@useResult
$Res call({
 String id,@MediumTrackingStateConverter() MediumTrackingState state, String title, int chaptersRead, int volumesOwned, int? chaptersTotal, String thumbnailUrl
});




}
/// @nodoc
class _$MangaTrackingDataCopyWithImpl<$Res>
    implements $MangaTrackingDataCopyWith<$Res> {
  _$MangaTrackingDataCopyWithImpl(this._self, this._then);

  final MangaTrackingData _self;
  final $Res Function(MangaTrackingData) _then;

/// Create a copy of MangaTrackingData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? state = null,Object? title = null,Object? chaptersRead = null,Object? volumesOwned = null,Object? chaptersTotal = freezed,Object? thumbnailUrl = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,state: null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as MediumTrackingState,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,chaptersRead: null == chaptersRead ? _self.chaptersRead : chaptersRead // ignore: cast_nullable_to_non_nullable
as int,volumesOwned: null == volumesOwned ? _self.volumesOwned : volumesOwned // ignore: cast_nullable_to_non_nullable
as int,chaptersTotal: freezed == chaptersTotal ? _self.chaptersTotal : chaptersTotal // ignore: cast_nullable_to_non_nullable
as int?,thumbnailUrl: null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MangaTrackingData].
extension MangaTrackingDataPatterns on MangaTrackingData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MangaTrackingData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MangaTrackingData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MangaTrackingData value)  $default,){
final _that = this;
switch (_that) {
case _MangaTrackingData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MangaTrackingData value)?  $default,){
final _that = this;
switch (_that) {
case _MangaTrackingData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @MediumTrackingStateConverter()  MediumTrackingState state,  String title,  int chaptersRead,  int volumesOwned,  int? chaptersTotal,  String thumbnailUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MangaTrackingData() when $default != null:
return $default(_that.id,_that.state,_that.title,_that.chaptersRead,_that.volumesOwned,_that.chaptersTotal,_that.thumbnailUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @MediumTrackingStateConverter()  MediumTrackingState state,  String title,  int chaptersRead,  int volumesOwned,  int? chaptersTotal,  String thumbnailUrl)  $default,) {final _that = this;
switch (_that) {
case _MangaTrackingData():
return $default(_that.id,_that.state,_that.title,_that.chaptersRead,_that.volumesOwned,_that.chaptersTotal,_that.thumbnailUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @MediumTrackingStateConverter()  MediumTrackingState state,  String title,  int chaptersRead,  int volumesOwned,  int? chaptersTotal,  String thumbnailUrl)?  $default,) {final _that = this;
switch (_that) {
case _MangaTrackingData() when $default != null:
return $default(_that.id,_that.state,_that.title,_that.chaptersRead,_that.volumesOwned,_that.chaptersTotal,_that.thumbnailUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MangaTrackingData extends MangaTrackingData {
   _MangaTrackingData(this.id, @MediumTrackingStateConverter() this.state, this.title, this.chaptersRead, this.volumesOwned, this.chaptersTotal, this.thumbnailUrl): super._();
  factory _MangaTrackingData.fromJson(Map<String, dynamic> json) => _$MangaTrackingDataFromJson(json);

/// The ID of the manga
@override final  String id;
/// The state of the manga
@override@MediumTrackingStateConverter() final  MediumTrackingState state;
/// The title of the manga
@override final  String title;
/// Chapters read.
@override final  int chaptersRead;
/// Chapters read.
@override final  int volumesOwned;
/// Episodes watched.
@override final  int? chaptersTotal;
/// URL to the thumbnail/cover art for the manga.
@override final  String thumbnailUrl;

/// Create a copy of MangaTrackingData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MangaTrackingDataCopyWith<_MangaTrackingData> get copyWith => __$MangaTrackingDataCopyWithImpl<_MangaTrackingData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MangaTrackingDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MangaTrackingData&&(identical(other.id, id) || other.id == id)&&(identical(other.state, state) || other.state == state)&&(identical(other.title, title) || other.title == title)&&(identical(other.chaptersRead, chaptersRead) || other.chaptersRead == chaptersRead)&&(identical(other.volumesOwned, volumesOwned) || other.volumesOwned == volumesOwned)&&(identical(other.chaptersTotal, chaptersTotal) || other.chaptersTotal == chaptersTotal)&&(identical(other.thumbnailUrl, thumbnailUrl) || other.thumbnailUrl == thumbnailUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,state,title,chaptersRead,volumesOwned,chaptersTotal,thumbnailUrl);

@override
String toString() {
  return 'MangaTrackingData(id: $id, state: $state, title: $title, chaptersRead: $chaptersRead, volumesOwned: $volumesOwned, chaptersTotal: $chaptersTotal, thumbnailUrl: $thumbnailUrl)';
}


}

/// @nodoc
abstract mixin class _$MangaTrackingDataCopyWith<$Res> implements $MangaTrackingDataCopyWith<$Res> {
  factory _$MangaTrackingDataCopyWith(_MangaTrackingData value, $Res Function(_MangaTrackingData) _then) = __$MangaTrackingDataCopyWithImpl;
@override @useResult
$Res call({
 String id,@MediumTrackingStateConverter() MediumTrackingState state, String title, int chaptersRead, int volumesOwned, int? chaptersTotal, String thumbnailUrl
});




}
/// @nodoc
class __$MangaTrackingDataCopyWithImpl<$Res>
    implements _$MangaTrackingDataCopyWith<$Res> {
  __$MangaTrackingDataCopyWithImpl(this._self, this._then);

  final _MangaTrackingData _self;
  final $Res Function(_MangaTrackingData) _then;

/// Create a copy of MangaTrackingData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? state = null,Object? title = null,Object? chaptersRead = null,Object? volumesOwned = null,Object? chaptersTotal = freezed,Object? thumbnailUrl = null,}) {
  return _then(_MangaTrackingData(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as MediumTrackingState,null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,null == chaptersRead ? _self.chaptersRead : chaptersRead // ignore: cast_nullable_to_non_nullable
as int,null == volumesOwned ? _self.volumesOwned : volumesOwned // ignore: cast_nullable_to_non_nullable
as int,freezed == chaptersTotal ? _self.chaptersTotal : chaptersTotal // ignore: cast_nullable_to_non_nullable
as int?,null == thumbnailUrl ? _self.thumbnailUrl : thumbnailUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

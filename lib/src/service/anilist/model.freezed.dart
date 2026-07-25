// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AnimeSearchResult {

 String get title; String get id; int? get episodes; String get imageUrl; String? get description; bool get isAiring; String? get broadcastDay;
/// Create a copy of AnimeSearchResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimeSearchResultCopyWith<AnimeSearchResult> get copyWith => _$AnimeSearchResultCopyWithImpl<AnimeSearchResult>(this as AnimeSearchResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnimeSearchResult&&(identical(other.title, title) || other.title == title)&&(identical(other.id, id) || other.id == id)&&(identical(other.episodes, episodes) || other.episodes == episodes)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.isAiring, isAiring) || other.isAiring == isAiring)&&(identical(other.broadcastDay, broadcastDay) || other.broadcastDay == broadcastDay));
}


@override
int get hashCode => Object.hash(runtimeType,title,id,episodes,imageUrl,description,isAiring,broadcastDay);

@override
String toString() {
  return 'AnimeSearchResult(title: $title, id: $id, episodes: $episodes, imageUrl: $imageUrl, description: $description, isAiring: $isAiring, broadcastDay: $broadcastDay)';
}


}

/// @nodoc
abstract mixin class $AnimeSearchResultCopyWith<$Res>  {
  factory $AnimeSearchResultCopyWith(AnimeSearchResult value, $Res Function(AnimeSearchResult) _then) = _$AnimeSearchResultCopyWithImpl;
@useResult
$Res call({
 String title, String id, int? episodes, String imageUrl, String? description, bool isAiring, String? broadcastDay
});




}
/// @nodoc
class _$AnimeSearchResultCopyWithImpl<$Res>
    implements $AnimeSearchResultCopyWith<$Res> {
  _$AnimeSearchResultCopyWithImpl(this._self, this._then);

  final AnimeSearchResult _self;
  final $Res Function(AnimeSearchResult) _then;

/// Create a copy of AnimeSearchResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? id = null,Object? episodes = freezed,Object? imageUrl = null,Object? description = freezed,Object? isAiring = null,Object? broadcastDay = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,episodes: freezed == episodes ? _self.episodes : episodes // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isAiring: null == isAiring ? _self.isAiring : isAiring // ignore: cast_nullable_to_non_nullable
as bool,broadcastDay: freezed == broadcastDay ? _self.broadcastDay : broadcastDay // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AnimeSearchResult].
extension AnimeSearchResultPatterns on AnimeSearchResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AnimeSearchResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AnimeSearchResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AnimeSearchResult value)  $default,){
final _that = this;
switch (_that) {
case _AnimeSearchResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AnimeSearchResult value)?  $default,){
final _that = this;
switch (_that) {
case _AnimeSearchResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String id,  int? episodes,  String imageUrl,  String? description,  bool isAiring,  String? broadcastDay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AnimeSearchResult() when $default != null:
return $default(_that.title,_that.id,_that.episodes,_that.imageUrl,_that.description,_that.isAiring,_that.broadcastDay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String id,  int? episodes,  String imageUrl,  String? description,  bool isAiring,  String? broadcastDay)  $default,) {final _that = this;
switch (_that) {
case _AnimeSearchResult():
return $default(_that.title,_that.id,_that.episodes,_that.imageUrl,_that.description,_that.isAiring,_that.broadcastDay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String id,  int? episodes,  String imageUrl,  String? description,  bool isAiring,  String? broadcastDay)?  $default,) {final _that = this;
switch (_that) {
case _AnimeSearchResult() when $default != null:
return $default(_that.title,_that.id,_that.episodes,_that.imageUrl,_that.description,_that.isAiring,_that.broadcastDay);case _:
  return null;

}
}

}

/// @nodoc


class _AnimeSearchResult implements AnimeSearchResult {
  const _AnimeSearchResult({required this.title, required this.id, required this.episodes, required this.imageUrl, required this.description, required this.isAiring, required this.broadcastDay});
  

@override final  String title;
@override final  String id;
@override final  int? episodes;
@override final  String imageUrl;
@override final  String? description;
@override final  bool isAiring;
@override final  String? broadcastDay;

/// Create a copy of AnimeSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnimeSearchResultCopyWith<_AnimeSearchResult> get copyWith => __$AnimeSearchResultCopyWithImpl<_AnimeSearchResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AnimeSearchResult&&(identical(other.title, title) || other.title == title)&&(identical(other.id, id) || other.id == id)&&(identical(other.episodes, episodes) || other.episodes == episodes)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description)&&(identical(other.isAiring, isAiring) || other.isAiring == isAiring)&&(identical(other.broadcastDay, broadcastDay) || other.broadcastDay == broadcastDay));
}


@override
int get hashCode => Object.hash(runtimeType,title,id,episodes,imageUrl,description,isAiring,broadcastDay);

@override
String toString() {
  return 'AnimeSearchResult(title: $title, id: $id, episodes: $episodes, imageUrl: $imageUrl, description: $description, isAiring: $isAiring, broadcastDay: $broadcastDay)';
}


}

/// @nodoc
abstract mixin class _$AnimeSearchResultCopyWith<$Res> implements $AnimeSearchResultCopyWith<$Res> {
  factory _$AnimeSearchResultCopyWith(_AnimeSearchResult value, $Res Function(_AnimeSearchResult) _then) = __$AnimeSearchResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String id, int? episodes, String imageUrl, String? description, bool isAiring, String? broadcastDay
});




}
/// @nodoc
class __$AnimeSearchResultCopyWithImpl<$Res>
    implements _$AnimeSearchResultCopyWith<$Res> {
  __$AnimeSearchResultCopyWithImpl(this._self, this._then);

  final _AnimeSearchResult _self;
  final $Res Function(_AnimeSearchResult) _then;

/// Create a copy of AnimeSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? id = null,Object? episodes = freezed,Object? imageUrl = null,Object? description = freezed,Object? isAiring = null,Object? broadcastDay = freezed,}) {
  return _then(_AnimeSearchResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,episodes: freezed == episodes ? _self.episodes : episodes // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,isAiring: null == isAiring ? _self.isAiring : isAiring // ignore: cast_nullable_to_non_nullable
as bool,broadcastDay: freezed == broadcastDay ? _self.broadcastDay : broadcastDay // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$MangaSearchResult {

 String get title; String get id; int? get chapters; String get imageUrl; String? get description;
/// Create a copy of MangaSearchResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MangaSearchResultCopyWith<MangaSearchResult> get copyWith => _$MangaSearchResultCopyWithImpl<MangaSearchResult>(this as MangaSearchResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MangaSearchResult&&(identical(other.title, title) || other.title == title)&&(identical(other.id, id) || other.id == id)&&(identical(other.chapters, chapters) || other.chapters == chapters)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,title,id,chapters,imageUrl,description);

@override
String toString() {
  return 'MangaSearchResult(title: $title, id: $id, chapters: $chapters, imageUrl: $imageUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class $MangaSearchResultCopyWith<$Res>  {
  factory $MangaSearchResultCopyWith(MangaSearchResult value, $Res Function(MangaSearchResult) _then) = _$MangaSearchResultCopyWithImpl;
@useResult
$Res call({
 String title, String id, int? chapters, String imageUrl, String? description
});




}
/// @nodoc
class _$MangaSearchResultCopyWithImpl<$Res>
    implements $MangaSearchResultCopyWith<$Res> {
  _$MangaSearchResultCopyWithImpl(this._self, this._then);

  final MangaSearchResult _self;
  final $Res Function(MangaSearchResult) _then;

/// Create a copy of MangaSearchResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? id = null,Object? chapters = freezed,Object? imageUrl = null,Object? description = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chapters: freezed == chapters ? _self.chapters : chapters // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MangaSearchResult].
extension MangaSearchResultPatterns on MangaSearchResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MangaSearchResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MangaSearchResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MangaSearchResult value)  $default,){
final _that = this;
switch (_that) {
case _MangaSearchResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MangaSearchResult value)?  $default,){
final _that = this;
switch (_that) {
case _MangaSearchResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  String id,  int? chapters,  String imageUrl,  String? description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MangaSearchResult() when $default != null:
return $default(_that.title,_that.id,_that.chapters,_that.imageUrl,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  String id,  int? chapters,  String imageUrl,  String? description)  $default,) {final _that = this;
switch (_that) {
case _MangaSearchResult():
return $default(_that.title,_that.id,_that.chapters,_that.imageUrl,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  String id,  int? chapters,  String imageUrl,  String? description)?  $default,) {final _that = this;
switch (_that) {
case _MangaSearchResult() when $default != null:
return $default(_that.title,_that.id,_that.chapters,_that.imageUrl,_that.description);case _:
  return null;

}
}

}

/// @nodoc


class _MangaSearchResult implements MangaSearchResult {
  const _MangaSearchResult({required this.title, required this.id, required this.chapters, required this.imageUrl, required this.description});
  

@override final  String title;
@override final  String id;
@override final  int? chapters;
@override final  String imageUrl;
@override final  String? description;

/// Create a copy of MangaSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MangaSearchResultCopyWith<_MangaSearchResult> get copyWith => __$MangaSearchResultCopyWithImpl<_MangaSearchResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MangaSearchResult&&(identical(other.title, title) || other.title == title)&&(identical(other.id, id) || other.id == id)&&(identical(other.chapters, chapters) || other.chapters == chapters)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.description, description) || other.description == description));
}


@override
int get hashCode => Object.hash(runtimeType,title,id,chapters,imageUrl,description);

@override
String toString() {
  return 'MangaSearchResult(title: $title, id: $id, chapters: $chapters, imageUrl: $imageUrl, description: $description)';
}


}

/// @nodoc
abstract mixin class _$MangaSearchResultCopyWith<$Res> implements $MangaSearchResultCopyWith<$Res> {
  factory _$MangaSearchResultCopyWith(_MangaSearchResult value, $Res Function(_MangaSearchResult) _then) = __$MangaSearchResultCopyWithImpl;
@override @useResult
$Res call({
 String title, String id, int? chapters, String imageUrl, String? description
});




}
/// @nodoc
class __$MangaSearchResultCopyWithImpl<$Res>
    implements _$MangaSearchResultCopyWith<$Res> {
  __$MangaSearchResultCopyWithImpl(this._self, this._then);

  final _MangaSearchResult _self;
  final $Res Function(_MangaSearchResult) _then;

/// Create a copy of MangaSearchResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? id = null,Object? chapters = freezed,Object? imageUrl = null,Object? description = freezed,}) {
  return _then(_MangaSearchResult(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,chapters: freezed == chapters ? _self.chapters : chapters // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$Anime {

 String get title; bool get isAiring; String? get broadcastDay;
/// Create a copy of Anime
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnimeCopyWith<Anime> get copyWith => _$AnimeCopyWithImpl<Anime>(this as Anime, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Anime&&(identical(other.title, title) || other.title == title)&&(identical(other.isAiring, isAiring) || other.isAiring == isAiring)&&(identical(other.broadcastDay, broadcastDay) || other.broadcastDay == broadcastDay));
}


@override
int get hashCode => Object.hash(runtimeType,title,isAiring,broadcastDay);

@override
String toString() {
  return 'Anime(title: $title, isAiring: $isAiring, broadcastDay: $broadcastDay)';
}


}

/// @nodoc
abstract mixin class $AnimeCopyWith<$Res>  {
  factory $AnimeCopyWith(Anime value, $Res Function(Anime) _then) = _$AnimeCopyWithImpl;
@useResult
$Res call({
 String title, bool isAiring, String? broadcastDay
});




}
/// @nodoc
class _$AnimeCopyWithImpl<$Res>
    implements $AnimeCopyWith<$Res> {
  _$AnimeCopyWithImpl(this._self, this._then);

  final Anime _self;
  final $Res Function(Anime) _then;

/// Create a copy of Anime
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? isAiring = null,Object? broadcastDay = freezed,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isAiring: null == isAiring ? _self.isAiring : isAiring // ignore: cast_nullable_to_non_nullable
as bool,broadcastDay: freezed == broadcastDay ? _self.broadcastDay : broadcastDay // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Anime].
extension AnimePatterns on Anime {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Anime value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Anime() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Anime value)  $default,){
final _that = this;
switch (_that) {
case _Anime():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Anime value)?  $default,){
final _that = this;
switch (_that) {
case _Anime() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String title,  bool isAiring,  String? broadcastDay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Anime() when $default != null:
return $default(_that.title,_that.isAiring,_that.broadcastDay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String title,  bool isAiring,  String? broadcastDay)  $default,) {final _that = this;
switch (_that) {
case _Anime():
return $default(_that.title,_that.isAiring,_that.broadcastDay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String title,  bool isAiring,  String? broadcastDay)?  $default,) {final _that = this;
switch (_that) {
case _Anime() when $default != null:
return $default(_that.title,_that.isAiring,_that.broadcastDay);case _:
  return null;

}
}

}

/// @nodoc


class _Anime implements Anime {
  const _Anime({required this.title, required this.isAiring, required this.broadcastDay});
  

@override final  String title;
@override final  bool isAiring;
@override final  String? broadcastDay;

/// Create a copy of Anime
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AnimeCopyWith<_Anime> get copyWith => __$AnimeCopyWithImpl<_Anime>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Anime&&(identical(other.title, title) || other.title == title)&&(identical(other.isAiring, isAiring) || other.isAiring == isAiring)&&(identical(other.broadcastDay, broadcastDay) || other.broadcastDay == broadcastDay));
}


@override
int get hashCode => Object.hash(runtimeType,title,isAiring,broadcastDay);

@override
String toString() {
  return 'Anime(title: $title, isAiring: $isAiring, broadcastDay: $broadcastDay)';
}


}

/// @nodoc
abstract mixin class _$AnimeCopyWith<$Res> implements $AnimeCopyWith<$Res> {
  factory _$AnimeCopyWith(_Anime value, $Res Function(_Anime) _then) = __$AnimeCopyWithImpl;
@override @useResult
$Res call({
 String title, bool isAiring, String? broadcastDay
});




}
/// @nodoc
class __$AnimeCopyWithImpl<$Res>
    implements _$AnimeCopyWith<$Res> {
  __$AnimeCopyWithImpl(this._self, this._then);

  final _Anime _self;
  final $Res Function(_Anime) _then;

/// Create a copy of Anime
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? isAiring = null,Object? broadcastDay = freezed,}) {
  return _then(_Anime(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,isAiring: null == isAiring ? _self.isAiring : isAiring // ignore: cast_nullable_to_non_nullable
as bool,broadcastDay: freezed == broadcastDay ? _self.broadcastDay : broadcastDay // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

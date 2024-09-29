// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manga.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MangaTrackingData _$MangaTrackingDataFromJson(Map<String, dynamic> json) {
  return _MangaTrackingData.fromJson(json);
}

/// @nodoc
mixin _$MangaTrackingData {
  /// The ID of the manga
  String get id => throw _privateConstructorUsedError;

  /// The state of the manga
  @MediumTrackingStateConverter()
  MediumTrackingState get state => throw _privateConstructorUsedError;

  /// The title of the manga
  String get title => throw _privateConstructorUsedError;

  /// Chapters read.
  int get chaptersRead => throw _privateConstructorUsedError;

  /// Chapters read.
  int get volumesOwned => throw _privateConstructorUsedError;

  /// Episodes watched.
  int? get chaptersTotal => throw _privateConstructorUsedError;

  /// URL to the thumbnail/cover art for the manga.
  String get thumbnailUrl => throw _privateConstructorUsedError;

  /// Serializes this MangaTrackingData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MangaTrackingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MangaTrackingDataCopyWith<MangaTrackingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaTrackingDataCopyWith<$Res> {
  factory $MangaTrackingDataCopyWith(
          MangaTrackingData value, $Res Function(MangaTrackingData) then) =
      _$MangaTrackingDataCopyWithImpl<$Res, MangaTrackingData>;
  @useResult
  $Res call(
      {String id,
      @MediumTrackingStateConverter() MediumTrackingState state,
      String title,
      int chaptersRead,
      int volumesOwned,
      int? chaptersTotal,
      String thumbnailUrl});
}

/// @nodoc
class _$MangaTrackingDataCopyWithImpl<$Res, $Val extends MangaTrackingData>
    implements $MangaTrackingDataCopyWith<$Res> {
  _$MangaTrackingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MangaTrackingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? state = null,
    Object? title = null,
    Object? chaptersRead = null,
    Object? volumesOwned = null,
    Object? chaptersTotal = freezed,
    Object? thumbnailUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      chaptersRead: null == chaptersRead
          ? _value.chaptersRead
          : chaptersRead // ignore: cast_nullable_to_non_nullable
              as int,
      volumesOwned: null == volumesOwned
          ? _value.volumesOwned
          : volumesOwned // ignore: cast_nullable_to_non_nullable
              as int,
      chaptersTotal: freezed == chaptersTotal
          ? _value.chaptersTotal
          : chaptersTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MangaTrackingDataImplCopyWith<$Res>
    implements $MangaTrackingDataCopyWith<$Res> {
  factory _$$MangaTrackingDataImplCopyWith(_$MangaTrackingDataImpl value,
          $Res Function(_$MangaTrackingDataImpl) then) =
      __$$MangaTrackingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @MediumTrackingStateConverter() MediumTrackingState state,
      String title,
      int chaptersRead,
      int volumesOwned,
      int? chaptersTotal,
      String thumbnailUrl});
}

/// @nodoc
class __$$MangaTrackingDataImplCopyWithImpl<$Res>
    extends _$MangaTrackingDataCopyWithImpl<$Res, _$MangaTrackingDataImpl>
    implements _$$MangaTrackingDataImplCopyWith<$Res> {
  __$$MangaTrackingDataImplCopyWithImpl(_$MangaTrackingDataImpl _value,
      $Res Function(_$MangaTrackingDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MangaTrackingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? state = null,
    Object? title = null,
    Object? chaptersRead = null,
    Object? volumesOwned = null,
    Object? chaptersTotal = freezed,
    Object? thumbnailUrl = null,
  }) {
    return _then(_$MangaTrackingDataImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == chaptersRead
          ? _value.chaptersRead
          : chaptersRead // ignore: cast_nullable_to_non_nullable
              as int,
      null == volumesOwned
          ? _value.volumesOwned
          : volumesOwned // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == chaptersTotal
          ? _value.chaptersTotal
          : chaptersTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MangaTrackingDataImpl implements _MangaTrackingData {
  _$MangaTrackingDataImpl(
      this.id,
      @MediumTrackingStateConverter() this.state,
      this.title,
      this.chaptersRead,
      this.volumesOwned,
      this.chaptersTotal,
      this.thumbnailUrl);

  factory _$MangaTrackingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MangaTrackingDataImplFromJson(json);

  /// The ID of the manga
  @override
  final String id;

  /// The state of the manga
  @override
  @MediumTrackingStateConverter()
  final MediumTrackingState state;

  /// The title of the manga
  @override
  final String title;

  /// Chapters read.
  @override
  final int chaptersRead;

  /// Chapters read.
  @override
  final int volumesOwned;

  /// Episodes watched.
  @override
  final int? chaptersTotal;

  /// URL to the thumbnail/cover art for the manga.
  @override
  final String thumbnailUrl;

  @override
  String toString() {
    return 'MangaTrackingData(id: $id, state: $state, title: $title, chaptersRead: $chaptersRead, volumesOwned: $volumesOwned, chaptersTotal: $chaptersTotal, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MangaTrackingDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.chaptersRead, chaptersRead) ||
                other.chaptersRead == chaptersRead) &&
            (identical(other.volumesOwned, volumesOwned) ||
                other.volumesOwned == volumesOwned) &&
            (identical(other.chaptersTotal, chaptersTotal) ||
                other.chaptersTotal == chaptersTotal) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, state, title, chaptersRead,
      volumesOwned, chaptersTotal, thumbnailUrl);

  /// Create a copy of MangaTrackingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MangaTrackingDataImplCopyWith<_$MangaTrackingDataImpl> get copyWith =>
      __$$MangaTrackingDataImplCopyWithImpl<_$MangaTrackingDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MangaTrackingDataImplToJson(
      this,
    );
  }
}

abstract class _MangaTrackingData implements MangaTrackingData {
  factory _MangaTrackingData(
      final String id,
      @MediumTrackingStateConverter() final MediumTrackingState state,
      final String title,
      final int chaptersRead,
      final int volumesOwned,
      final int? chaptersTotal,
      final String thumbnailUrl) = _$MangaTrackingDataImpl;

  factory _MangaTrackingData.fromJson(Map<String, dynamic> json) =
      _$MangaTrackingDataImpl.fromJson;

  /// The ID of the manga
  @override
  String get id;

  /// The state of the manga
  @override
  @MediumTrackingStateConverter()
  MediumTrackingState get state;

  /// The title of the manga
  @override
  String get title;

  /// Chapters read.
  @override
  int get chaptersRead;

  /// Chapters read.
  @override
  int get volumesOwned;

  /// Episodes watched.
  @override
  int? get chaptersTotal;

  /// URL to the thumbnail/cover art for the manga.
  @override
  String get thumbnailUrl;

  /// Create a copy of MangaTrackingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MangaTrackingDataImplCopyWith<_$MangaTrackingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

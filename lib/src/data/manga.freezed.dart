// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'manga.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MangaTrackingDataCopyWith<MangaTrackingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MangaTrackingDataCopyWith<$Res> {
  factory $MangaTrackingDataCopyWith(
          MangaTrackingData value, $Res Function(MangaTrackingData) then) =
      _$MangaTrackingDataCopyWithImpl<$Res>;
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
class _$MangaTrackingDataCopyWithImpl<$Res>
    implements $MangaTrackingDataCopyWith<$Res> {
  _$MangaTrackingDataCopyWithImpl(this._value, this._then);

  final MangaTrackingData _value;
  // ignore: unused_field
  final $Res Function(MangaTrackingData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? state = freezed,
    Object? title = freezed,
    Object? chaptersRead = freezed,
    Object? volumesOwned = freezed,
    Object? chaptersTotal = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      chaptersRead: chaptersRead == freezed
          ? _value.chaptersRead
          : chaptersRead // ignore: cast_nullable_to_non_nullable
              as int,
      volumesOwned: volumesOwned == freezed
          ? _value.volumesOwned
          : volumesOwned // ignore: cast_nullable_to_non_nullable
              as int,
      chaptersTotal: chaptersTotal == freezed
          ? _value.chaptersTotal
          : chaptersTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MangaTrackingDataCopyWith<$Res>
    implements $MangaTrackingDataCopyWith<$Res> {
  factory _$$_MangaTrackingDataCopyWith(_$_MangaTrackingData value,
          $Res Function(_$_MangaTrackingData) then) =
      __$$_MangaTrackingDataCopyWithImpl<$Res>;
  @override
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
class __$$_MangaTrackingDataCopyWithImpl<$Res>
    extends _$MangaTrackingDataCopyWithImpl<$Res>
    implements _$$_MangaTrackingDataCopyWith<$Res> {
  __$$_MangaTrackingDataCopyWithImpl(
      _$_MangaTrackingData _value, $Res Function(_$_MangaTrackingData) _then)
      : super(_value, (v) => _then(v as _$_MangaTrackingData));

  @override
  _$_MangaTrackingData get _value => super._value as _$_MangaTrackingData;

  @override
  $Res call({
    Object? id = freezed,
    Object? state = freezed,
    Object? title = freezed,
    Object? chaptersRead = freezed,
    Object? volumesOwned = freezed,
    Object? chaptersTotal = freezed,
    Object? thumbnailUrl = freezed,
  }) {
    return _then(_$_MangaTrackingData(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      chaptersRead == freezed
          ? _value.chaptersRead
          : chaptersRead // ignore: cast_nullable_to_non_nullable
              as int,
      volumesOwned == freezed
          ? _value.volumesOwned
          : volumesOwned // ignore: cast_nullable_to_non_nullable
              as int,
      chaptersTotal == freezed
          ? _value.chaptersTotal
          : chaptersTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MangaTrackingData implements _MangaTrackingData {
  _$_MangaTrackingData(
      this.id,
      @MediumTrackingStateConverter() this.state,
      this.title,
      this.chaptersRead,
      this.volumesOwned,
      this.chaptersTotal,
      this.thumbnailUrl);

  factory _$_MangaTrackingData.fromJson(Map<String, dynamic> json) =>
      _$$_MangaTrackingDataFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MangaTrackingData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.chaptersRead, chaptersRead) &&
            const DeepCollectionEquality()
                .equals(other.volumesOwned, volumesOwned) &&
            const DeepCollectionEquality()
                .equals(other.chaptersTotal, chaptersTotal) &&
            const DeepCollectionEquality()
                .equals(other.thumbnailUrl, thumbnailUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(chaptersRead),
      const DeepCollectionEquality().hash(volumesOwned),
      const DeepCollectionEquality().hash(chaptersTotal),
      const DeepCollectionEquality().hash(thumbnailUrl));

  @JsonKey(ignore: true)
  @override
  _$$_MangaTrackingDataCopyWith<_$_MangaTrackingData> get copyWith =>
      __$$_MangaTrackingDataCopyWithImpl<_$_MangaTrackingData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MangaTrackingDataToJson(
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
      final String thumbnailUrl) = _$_MangaTrackingData;

  factory _MangaTrackingData.fromJson(Map<String, dynamic> json) =
      _$_MangaTrackingData.fromJson;

  @override

  /// The ID of the manga
  String get id;
  @override

  /// The state of the manga
  @MediumTrackingStateConverter()
  MediumTrackingState get state;
  @override

  /// The title of the manga
  String get title;
  @override

  /// Chapters read.
  int get chaptersRead;
  @override

  /// Chapters read.
  int get volumesOwned;
  @override

  /// Episodes watched.
  int? get chaptersTotal;
  @override

  /// URL to the thumbnail/cover art for the manga.
  String get thumbnailUrl;
  @override
  @JsonKey(ignore: true)
  _$$_MangaTrackingDataCopyWith<_$_MangaTrackingData> get copyWith =>
      throw _privateConstructorUsedError;
}

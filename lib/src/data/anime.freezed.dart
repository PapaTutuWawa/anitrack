// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnimeTrackingData _$AnimeTrackingDataFromJson(Map<String, dynamic> json) {
  return _AnimeTrackingData.fromJson(json);
}

/// @nodoc
mixin _$AnimeTrackingData {
  /// The ID of the anime
  String get id => throw _privateConstructorUsedError;

  /// The state of the anime
  @MediumTrackingStateConverter()
  MediumTrackingState get state => throw _privateConstructorUsedError;

  /// The title of the anime
  String get title => throw _privateConstructorUsedError;

  /// Episodes in total.
  int get episodesWatched => throw _privateConstructorUsedError;

  /// Episodes watched.
  int? get episodesTotal => throw _privateConstructorUsedError;

  /// URL to the thumbnail/cover art for the anime.
  String get thumbnailUrl => throw _privateConstructorUsedError;

  /// Flag whether the anime is airing
  @BoolConverter()
  bool get airing => throw _privateConstructorUsedError;

  /// The day of the week the anime is airing
  String? get broadcastDay => throw _privateConstructorUsedError;

  /// Serializes this AnimeTrackingData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AnimeTrackingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimeTrackingDataCopyWith<AnimeTrackingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeTrackingDataCopyWith<$Res> {
  factory $AnimeTrackingDataCopyWith(
          AnimeTrackingData value, $Res Function(AnimeTrackingData) then) =
      _$AnimeTrackingDataCopyWithImpl<$Res, AnimeTrackingData>;
  @useResult
  $Res call(
      {String id,
      @MediumTrackingStateConverter() MediumTrackingState state,
      String title,
      int episodesWatched,
      int? episodesTotal,
      String thumbnailUrl,
      @BoolConverter() bool airing,
      String? broadcastDay});
}

/// @nodoc
class _$AnimeTrackingDataCopyWithImpl<$Res, $Val extends AnimeTrackingData>
    implements $AnimeTrackingDataCopyWith<$Res> {
  _$AnimeTrackingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimeTrackingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? state = null,
    Object? title = null,
    Object? episodesWatched = null,
    Object? episodesTotal = freezed,
    Object? thumbnailUrl = null,
    Object? airing = null,
    Object? broadcastDay = freezed,
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
      episodesWatched: null == episodesWatched
          ? _value.episodesWatched
          : episodesWatched // ignore: cast_nullable_to_non_nullable
              as int,
      episodesTotal: freezed == episodesTotal
          ? _value.episodesTotal
          : episodesTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      airing: null == airing
          ? _value.airing
          : airing // ignore: cast_nullable_to_non_nullable
              as bool,
      broadcastDay: freezed == broadcastDay
          ? _value.broadcastDay
          : broadcastDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimeTrackingDataImplCopyWith<$Res>
    implements $AnimeTrackingDataCopyWith<$Res> {
  factory _$$AnimeTrackingDataImplCopyWith(_$AnimeTrackingDataImpl value,
          $Res Function(_$AnimeTrackingDataImpl) then) =
      __$$AnimeTrackingDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @MediumTrackingStateConverter() MediumTrackingState state,
      String title,
      int episodesWatched,
      int? episodesTotal,
      String thumbnailUrl,
      @BoolConverter() bool airing,
      String? broadcastDay});
}

/// @nodoc
class __$$AnimeTrackingDataImplCopyWithImpl<$Res>
    extends _$AnimeTrackingDataCopyWithImpl<$Res, _$AnimeTrackingDataImpl>
    implements _$$AnimeTrackingDataImplCopyWith<$Res> {
  __$$AnimeTrackingDataImplCopyWithImpl(_$AnimeTrackingDataImpl _value,
      $Res Function(_$AnimeTrackingDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnimeTrackingData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? state = null,
    Object? title = null,
    Object? episodesWatched = null,
    Object? episodesTotal = freezed,
    Object? thumbnailUrl = null,
    Object? airing = null,
    Object? broadcastDay = freezed,
  }) {
    return _then(_$AnimeTrackingDataImpl(
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
      null == episodesWatched
          ? _value.episodesWatched
          : episodesWatched // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == episodesTotal
          ? _value.episodesTotal
          : episodesTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      null == airing
          ? _value.airing
          : airing // ignore: cast_nullable_to_non_nullable
              as bool,
      freezed == broadcastDay
          ? _value.broadcastDay
          : broadcastDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnimeTrackingDataImpl implements _AnimeTrackingData {
  _$AnimeTrackingDataImpl(
      this.id,
      @MediumTrackingStateConverter() this.state,
      this.title,
      this.episodesWatched,
      this.episodesTotal,
      this.thumbnailUrl,
      @BoolConverter() this.airing,
      this.broadcastDay);

  factory _$AnimeTrackingDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnimeTrackingDataImplFromJson(json);

  /// The ID of the anime
  @override
  final String id;

  /// The state of the anime
  @override
  @MediumTrackingStateConverter()
  final MediumTrackingState state;

  /// The title of the anime
  @override
  final String title;

  /// Episodes in total.
  @override
  final int episodesWatched;

  /// Episodes watched.
  @override
  final int? episodesTotal;

  /// URL to the thumbnail/cover art for the anime.
  @override
  final String thumbnailUrl;

  /// Flag whether the anime is airing
  @override
  @BoolConverter()
  final bool airing;

  /// The day of the week the anime is airing
  @override
  final String? broadcastDay;

  @override
  String toString() {
    return 'AnimeTrackingData(id: $id, state: $state, title: $title, episodesWatched: $episodesWatched, episodesTotal: $episodesTotal, thumbnailUrl: $thumbnailUrl, airing: $airing, broadcastDay: $broadcastDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeTrackingDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.episodesWatched, episodesWatched) ||
                other.episodesWatched == episodesWatched) &&
            (identical(other.episodesTotal, episodesTotal) ||
                other.episodesTotal == episodesTotal) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.airing, airing) || other.airing == airing) &&
            (identical(other.broadcastDay, broadcastDay) ||
                other.broadcastDay == broadcastDay));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, state, title,
      episodesWatched, episodesTotal, thumbnailUrl, airing, broadcastDay);

  /// Create a copy of AnimeTrackingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeTrackingDataImplCopyWith<_$AnimeTrackingDataImpl> get copyWith =>
      __$$AnimeTrackingDataImplCopyWithImpl<_$AnimeTrackingDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnimeTrackingDataImplToJson(
      this,
    );
  }
}

abstract class _AnimeTrackingData implements AnimeTrackingData {
  factory _AnimeTrackingData(
      final String id,
      @MediumTrackingStateConverter() final MediumTrackingState state,
      final String title,
      final int episodesWatched,
      final int? episodesTotal,
      final String thumbnailUrl,
      @BoolConverter() final bool airing,
      final String? broadcastDay) = _$AnimeTrackingDataImpl;

  factory _AnimeTrackingData.fromJson(Map<String, dynamic> json) =
      _$AnimeTrackingDataImpl.fromJson;

  /// The ID of the anime
  @override
  String get id;

  /// The state of the anime
  @override
  @MediumTrackingStateConverter()
  MediumTrackingState get state;

  /// The title of the anime
  @override
  String get title;

  /// Episodes in total.
  @override
  int get episodesWatched;

  /// Episodes watched.
  @override
  int? get episodesTotal;

  /// URL to the thumbnail/cover art for the anime.
  @override
  String get thumbnailUrl;

  /// Flag whether the anime is airing
  @override
  @BoolConverter()
  bool get airing;

  /// The day of the week the anime is airing
  @override
  String? get broadcastDay;

  /// Create a copy of AnimeTrackingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimeTrackingDataImplCopyWith<_$AnimeTrackingDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

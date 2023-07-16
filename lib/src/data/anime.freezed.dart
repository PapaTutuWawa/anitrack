// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'anime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnimeTrackingDataCopyWith<AnimeTrackingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeTrackingDataCopyWith<$Res> {
  factory $AnimeTrackingDataCopyWith(
          AnimeTrackingData value, $Res Function(AnimeTrackingData) then) =
      _$AnimeTrackingDataCopyWithImpl<$Res>;
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
class _$AnimeTrackingDataCopyWithImpl<$Res>
    implements $AnimeTrackingDataCopyWith<$Res> {
  _$AnimeTrackingDataCopyWithImpl(this._value, this._then);

  final AnimeTrackingData _value;
  // ignore: unused_field
  final $Res Function(AnimeTrackingData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? state = freezed,
    Object? title = freezed,
    Object? episodesWatched = freezed,
    Object? episodesTotal = freezed,
    Object? thumbnailUrl = freezed,
    Object? airing = freezed,
    Object? broadcastDay = freezed,
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
      episodesWatched: episodesWatched == freezed
          ? _value.episodesWatched
          : episodesWatched // ignore: cast_nullable_to_non_nullable
              as int,
      episodesTotal: episodesTotal == freezed
          ? _value.episodesTotal
          : episodesTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      airing: airing == freezed
          ? _value.airing
          : airing // ignore: cast_nullable_to_non_nullable
              as bool,
      broadcastDay: broadcastDay == freezed
          ? _value.broadcastDay
          : broadcastDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AnimeTrackingDataCopyWith<$Res>
    implements $AnimeTrackingDataCopyWith<$Res> {
  factory _$$_AnimeTrackingDataCopyWith(_$_AnimeTrackingData value,
          $Res Function(_$_AnimeTrackingData) then) =
      __$$_AnimeTrackingDataCopyWithImpl<$Res>;
  @override
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
class __$$_AnimeTrackingDataCopyWithImpl<$Res>
    extends _$AnimeTrackingDataCopyWithImpl<$Res>
    implements _$$_AnimeTrackingDataCopyWith<$Res> {
  __$$_AnimeTrackingDataCopyWithImpl(
      _$_AnimeTrackingData _value, $Res Function(_$_AnimeTrackingData) _then)
      : super(_value, (v) => _then(v as _$_AnimeTrackingData));

  @override
  _$_AnimeTrackingData get _value => super._value as _$_AnimeTrackingData;

  @override
  $Res call({
    Object? id = freezed,
    Object? state = freezed,
    Object? title = freezed,
    Object? episodesWatched = freezed,
    Object? episodesTotal = freezed,
    Object? thumbnailUrl = freezed,
    Object? airing = freezed,
    Object? broadcastDay = freezed,
  }) {
    return _then(_$_AnimeTrackingData(
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
      episodesWatched == freezed
          ? _value.episodesWatched
          : episodesWatched // ignore: cast_nullable_to_non_nullable
              as int,
      episodesTotal == freezed
          ? _value.episodesTotal
          : episodesTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl == freezed
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      airing == freezed
          ? _value.airing
          : airing // ignore: cast_nullable_to_non_nullable
              as bool,
      broadcastDay == freezed
          ? _value.broadcastDay
          : broadcastDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnimeTrackingData implements _AnimeTrackingData {
  _$_AnimeTrackingData(
      this.id,
      @MediumTrackingStateConverter() this.state,
      this.title,
      this.episodesWatched,
      this.episodesTotal,
      this.thumbnailUrl,
      @BoolConverter() this.airing,
      this.broadcastDay);

  factory _$_AnimeTrackingData.fromJson(Map<String, dynamic> json) =>
      _$$_AnimeTrackingDataFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeTrackingData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.episodesWatched, episodesWatched) &&
            const DeepCollectionEquality()
                .equals(other.episodesTotal, episodesTotal) &&
            const DeepCollectionEquality()
                .equals(other.thumbnailUrl, thumbnailUrl) &&
            const DeepCollectionEquality().equals(other.airing, airing) &&
            const DeepCollectionEquality()
                .equals(other.broadcastDay, broadcastDay));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(episodesWatched),
      const DeepCollectionEquality().hash(episodesTotal),
      const DeepCollectionEquality().hash(thumbnailUrl),
      const DeepCollectionEquality().hash(airing),
      const DeepCollectionEquality().hash(broadcastDay));

  @JsonKey(ignore: true)
  @override
  _$$_AnimeTrackingDataCopyWith<_$_AnimeTrackingData> get copyWith =>
      __$$_AnimeTrackingDataCopyWithImpl<_$_AnimeTrackingData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnimeTrackingDataToJson(
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
      final String? broadcastDay) = _$_AnimeTrackingData;

  factory _AnimeTrackingData.fromJson(Map<String, dynamic> json) =
      _$_AnimeTrackingData.fromJson;

  @override

  /// The ID of the anime
  String get id;
  @override

  /// The state of the anime
  @MediumTrackingStateConverter()
  MediumTrackingState get state;
  @override

  /// The title of the anime
  String get title;
  @override

  /// Episodes in total.
  int get episodesWatched;
  @override

  /// Episodes watched.
  int? get episodesTotal;
  @override

  /// URL to the thumbnail/cover art for the anime.
  String get thumbnailUrl;
  @override

  /// Flag whether the anime is airing
  @BoolConverter()
  bool get airing;
  @override

  /// The day of the week the anime is airing
  String? get broadcastDay;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeTrackingDataCopyWith<_$_AnimeTrackingData> get copyWith =>
      throw _privateConstructorUsedError;
}

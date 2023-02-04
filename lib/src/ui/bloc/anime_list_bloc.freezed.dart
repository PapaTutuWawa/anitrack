// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'anime_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimeListState {
  List<AnimeTrackingData> get animes => throw _privateConstructorUsedError;
  List<MangaTrackingData> get mangas => throw _privateConstructorUsedError;
  AnimeTrackingState get animeFilterState => throw _privateConstructorUsedError;
  MangaTrackingState get mangaFilterState => throw _privateConstructorUsedError;
  TrackingMediumType get trackingType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimeListStateCopyWith<AnimeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeListStateCopyWith<$Res> {
  factory $AnimeListStateCopyWith(
          AnimeListState value, $Res Function(AnimeListState) then) =
      _$AnimeListStateCopyWithImpl<$Res>;
  $Res call(
      {List<AnimeTrackingData> animes,
      List<MangaTrackingData> mangas,
      AnimeTrackingState animeFilterState,
      MangaTrackingState mangaFilterState,
      TrackingMediumType trackingType});
}

/// @nodoc
class _$AnimeListStateCopyWithImpl<$Res>
    implements $AnimeListStateCopyWith<$Res> {
  _$AnimeListStateCopyWithImpl(this._value, this._then);

  final AnimeListState _value;
  // ignore: unused_field
  final $Res Function(AnimeListState) _then;

  @override
  $Res call({
    Object? animes = freezed,
    Object? mangas = freezed,
    Object? animeFilterState = freezed,
    Object? mangaFilterState = freezed,
    Object? trackingType = freezed,
  }) {
    return _then(_value.copyWith(
      animes: animes == freezed
          ? _value.animes
          : animes // ignore: cast_nullable_to_non_nullable
              as List<AnimeTrackingData>,
      mangas: mangas == freezed
          ? _value.mangas
          : mangas // ignore: cast_nullable_to_non_nullable
              as List<MangaTrackingData>,
      animeFilterState: animeFilterState == freezed
          ? _value.animeFilterState
          : animeFilterState // ignore: cast_nullable_to_non_nullable
              as AnimeTrackingState,
      mangaFilterState: mangaFilterState == freezed
          ? _value.mangaFilterState
          : mangaFilterState // ignore: cast_nullable_to_non_nullable
              as MangaTrackingState,
      trackingType: trackingType == freezed
          ? _value.trackingType
          : trackingType // ignore: cast_nullable_to_non_nullable
              as TrackingMediumType,
    ));
  }
}

/// @nodoc
abstract class _$$_AnimeListStateCopyWith<$Res>
    implements $AnimeListStateCopyWith<$Res> {
  factory _$$_AnimeListStateCopyWith(
          _$_AnimeListState value, $Res Function(_$_AnimeListState) then) =
      __$$_AnimeListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<AnimeTrackingData> animes,
      List<MangaTrackingData> mangas,
      AnimeTrackingState animeFilterState,
      MangaTrackingState mangaFilterState,
      TrackingMediumType trackingType});
}

/// @nodoc
class __$$_AnimeListStateCopyWithImpl<$Res>
    extends _$AnimeListStateCopyWithImpl<$Res>
    implements _$$_AnimeListStateCopyWith<$Res> {
  __$$_AnimeListStateCopyWithImpl(
      _$_AnimeListState _value, $Res Function(_$_AnimeListState) _then)
      : super(_value, (v) => _then(v as _$_AnimeListState));

  @override
  _$_AnimeListState get _value => super._value as _$_AnimeListState;

  @override
  $Res call({
    Object? animes = freezed,
    Object? mangas = freezed,
    Object? animeFilterState = freezed,
    Object? mangaFilterState = freezed,
    Object? trackingType = freezed,
  }) {
    return _then(_$_AnimeListState(
      animes: animes == freezed
          ? _value._animes
          : animes // ignore: cast_nullable_to_non_nullable
              as List<AnimeTrackingData>,
      mangas: mangas == freezed
          ? _value._mangas
          : mangas // ignore: cast_nullable_to_non_nullable
              as List<MangaTrackingData>,
      animeFilterState: animeFilterState == freezed
          ? _value.animeFilterState
          : animeFilterState // ignore: cast_nullable_to_non_nullable
              as AnimeTrackingState,
      mangaFilterState: mangaFilterState == freezed
          ? _value.mangaFilterState
          : mangaFilterState // ignore: cast_nullable_to_non_nullable
              as MangaTrackingState,
      trackingType: trackingType == freezed
          ? _value.trackingType
          : trackingType // ignore: cast_nullable_to_non_nullable
              as TrackingMediumType,
    ));
  }
}

/// @nodoc

class _$_AnimeListState implements _AnimeListState {
  _$_AnimeListState(
      {final List<AnimeTrackingData> animes = const [],
      final List<MangaTrackingData> mangas = const [],
      this.animeFilterState = AnimeTrackingState.watching,
      this.mangaFilterState = MangaTrackingState.reading,
      this.trackingType = TrackingMediumType.anime})
      : _animes = animes,
        _mangas = mangas;

  final List<AnimeTrackingData> _animes;
  @override
  @JsonKey()
  List<AnimeTrackingData> get animes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animes);
  }

  final List<MangaTrackingData> _mangas;
  @override
  @JsonKey()
  List<MangaTrackingData> get mangas {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mangas);
  }

  @override
  @JsonKey()
  final AnimeTrackingState animeFilterState;
  @override
  @JsonKey()
  final MangaTrackingState mangaFilterState;
  @override
  @JsonKey()
  final TrackingMediumType trackingType;

  @override
  String toString() {
    return 'AnimeListState(animes: $animes, mangas: $mangas, animeFilterState: $animeFilterState, mangaFilterState: $mangaFilterState, trackingType: $trackingType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeListState &&
            const DeepCollectionEquality().equals(other._animes, _animes) &&
            const DeepCollectionEquality().equals(other._mangas, _mangas) &&
            const DeepCollectionEquality()
                .equals(other.animeFilterState, animeFilterState) &&
            const DeepCollectionEquality()
                .equals(other.mangaFilterState, mangaFilterState) &&
            const DeepCollectionEquality()
                .equals(other.trackingType, trackingType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_animes),
      const DeepCollectionEquality().hash(_mangas),
      const DeepCollectionEquality().hash(animeFilterState),
      const DeepCollectionEquality().hash(mangaFilterState),
      const DeepCollectionEquality().hash(trackingType));

  @JsonKey(ignore: true)
  @override
  _$$_AnimeListStateCopyWith<_$_AnimeListState> get copyWith =>
      __$$_AnimeListStateCopyWithImpl<_$_AnimeListState>(this, _$identity);
}

abstract class _AnimeListState implements AnimeListState {
  factory _AnimeListState(
      {final List<AnimeTrackingData> animes,
      final List<MangaTrackingData> mangas,
      final AnimeTrackingState animeFilterState,
      final MangaTrackingState mangaFilterState,
      final TrackingMediumType trackingType}) = _$_AnimeListState;

  @override
  List<AnimeTrackingData> get animes;
  @override
  List<MangaTrackingData> get mangas;
  @override
  AnimeTrackingState get animeFilterState;
  @override
  MangaTrackingState get mangaFilterState;
  @override
  TrackingMediumType get trackingType;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeListStateCopyWith<_$_AnimeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

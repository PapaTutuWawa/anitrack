// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnimeListState {
  bool get buttonVisibility => throw _privateConstructorUsedError;
  List<AnimeTrackingData> get animes => throw _privateConstructorUsedError;
  List<MangaTrackingData> get mangas => throw _privateConstructorUsedError;
  MediumTrackingState get animeFilterState =>
      throw _privateConstructorUsedError;
  MediumTrackingState get mangaFilterState =>
      throw _privateConstructorUsedError;
  TrackingMediumType get trackingType => throw _privateConstructorUsedError;

  /// Create a copy of AnimeListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimeListStateCopyWith<AnimeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeListStateCopyWith<$Res> {
  factory $AnimeListStateCopyWith(
          AnimeListState value, $Res Function(AnimeListState) then) =
      _$AnimeListStateCopyWithImpl<$Res, AnimeListState>;
  @useResult
  $Res call(
      {bool buttonVisibility,
      List<AnimeTrackingData> animes,
      List<MangaTrackingData> mangas,
      MediumTrackingState animeFilterState,
      MediumTrackingState mangaFilterState,
      TrackingMediumType trackingType});
}

/// @nodoc
class _$AnimeListStateCopyWithImpl<$Res, $Val extends AnimeListState>
    implements $AnimeListStateCopyWith<$Res> {
  _$AnimeListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnimeListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonVisibility = null,
    Object? animes = null,
    Object? mangas = null,
    Object? animeFilterState = null,
    Object? mangaFilterState = null,
    Object? trackingType = null,
  }) {
    return _then(_value.copyWith(
      buttonVisibility: null == buttonVisibility
          ? _value.buttonVisibility
          : buttonVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      animes: null == animes
          ? _value.animes
          : animes // ignore: cast_nullable_to_non_nullable
              as List<AnimeTrackingData>,
      mangas: null == mangas
          ? _value.mangas
          : mangas // ignore: cast_nullable_to_non_nullable
              as List<MangaTrackingData>,
      animeFilterState: null == animeFilterState
          ? _value.animeFilterState
          : animeFilterState // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      mangaFilterState: null == mangaFilterState
          ? _value.mangaFilterState
          : mangaFilterState // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      trackingType: null == trackingType
          ? _value.trackingType
          : trackingType // ignore: cast_nullable_to_non_nullable
              as TrackingMediumType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimeListStateImplCopyWith<$Res>
    implements $AnimeListStateCopyWith<$Res> {
  factory _$$AnimeListStateImplCopyWith(_$AnimeListStateImpl value,
          $Res Function(_$AnimeListStateImpl) then) =
      __$$AnimeListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool buttonVisibility,
      List<AnimeTrackingData> animes,
      List<MangaTrackingData> mangas,
      MediumTrackingState animeFilterState,
      MediumTrackingState mangaFilterState,
      TrackingMediumType trackingType});
}

/// @nodoc
class __$$AnimeListStateImplCopyWithImpl<$Res>
    extends _$AnimeListStateCopyWithImpl<$Res, _$AnimeListStateImpl>
    implements _$$AnimeListStateImplCopyWith<$Res> {
  __$$AnimeListStateImplCopyWithImpl(
      _$AnimeListStateImpl _value, $Res Function(_$AnimeListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AnimeListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? buttonVisibility = null,
    Object? animes = null,
    Object? mangas = null,
    Object? animeFilterState = null,
    Object? mangaFilterState = null,
    Object? trackingType = null,
  }) {
    return _then(_$AnimeListStateImpl(
      buttonVisibility: null == buttonVisibility
          ? _value.buttonVisibility
          : buttonVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      animes: null == animes
          ? _value._animes
          : animes // ignore: cast_nullable_to_non_nullable
              as List<AnimeTrackingData>,
      mangas: null == mangas
          ? _value._mangas
          : mangas // ignore: cast_nullable_to_non_nullable
              as List<MangaTrackingData>,
      animeFilterState: null == animeFilterState
          ? _value.animeFilterState
          : animeFilterState // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      mangaFilterState: null == mangaFilterState
          ? _value.mangaFilterState
          : mangaFilterState // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      trackingType: null == trackingType
          ? _value.trackingType
          : trackingType // ignore: cast_nullable_to_non_nullable
              as TrackingMediumType,
    ));
  }
}

/// @nodoc

class _$AnimeListStateImpl implements _AnimeListState {
  _$AnimeListStateImpl(
      {this.buttonVisibility = true,
      final List<AnimeTrackingData> animes = const [],
      final List<MangaTrackingData> mangas = const [],
      this.animeFilterState = MediumTrackingState.ongoing,
      this.mangaFilterState = MediumTrackingState.ongoing,
      this.trackingType = TrackingMediumType.anime})
      : _animes = animes,
        _mangas = mangas;

  @override
  @JsonKey()
  final bool buttonVisibility;
  final List<AnimeTrackingData> _animes;
  @override
  @JsonKey()
  List<AnimeTrackingData> get animes {
    if (_animes is EqualUnmodifiableListView) return _animes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animes);
  }

  final List<MangaTrackingData> _mangas;
  @override
  @JsonKey()
  List<MangaTrackingData> get mangas {
    if (_mangas is EqualUnmodifiableListView) return _mangas;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mangas);
  }

  @override
  @JsonKey()
  final MediumTrackingState animeFilterState;
  @override
  @JsonKey()
  final MediumTrackingState mangaFilterState;
  @override
  @JsonKey()
  final TrackingMediumType trackingType;

  @override
  String toString() {
    return 'AnimeListState(buttonVisibility: $buttonVisibility, animes: $animes, mangas: $mangas, animeFilterState: $animeFilterState, mangaFilterState: $mangaFilterState, trackingType: $trackingType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeListStateImpl &&
            (identical(other.buttonVisibility, buttonVisibility) ||
                other.buttonVisibility == buttonVisibility) &&
            const DeepCollectionEquality().equals(other._animes, _animes) &&
            const DeepCollectionEquality().equals(other._mangas, _mangas) &&
            (identical(other.animeFilterState, animeFilterState) ||
                other.animeFilterState == animeFilterState) &&
            (identical(other.mangaFilterState, mangaFilterState) ||
                other.mangaFilterState == mangaFilterState) &&
            (identical(other.trackingType, trackingType) ||
                other.trackingType == trackingType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      buttonVisibility,
      const DeepCollectionEquality().hash(_animes),
      const DeepCollectionEquality().hash(_mangas),
      animeFilterState,
      mangaFilterState,
      trackingType);

  /// Create a copy of AnimeListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeListStateImplCopyWith<_$AnimeListStateImpl> get copyWith =>
      __$$AnimeListStateImplCopyWithImpl<_$AnimeListStateImpl>(
          this, _$identity);
}

abstract class _AnimeListState implements AnimeListState {
  factory _AnimeListState(
      {final bool buttonVisibility,
      final List<AnimeTrackingData> animes,
      final List<MangaTrackingData> mangas,
      final MediumTrackingState animeFilterState,
      final MediumTrackingState mangaFilterState,
      final TrackingMediumType trackingType}) = _$AnimeListStateImpl;

  @override
  bool get buttonVisibility;
  @override
  List<AnimeTrackingData> get animes;
  @override
  List<MangaTrackingData> get mangas;
  @override
  MediumTrackingState get animeFilterState;
  @override
  MediumTrackingState get mangaFilterState;
  @override
  TrackingMediumType get trackingType;

  /// Create a copy of AnimeListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimeListStateImplCopyWith<_$AnimeListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

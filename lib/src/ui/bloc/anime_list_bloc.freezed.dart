// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnimeListState {
  bool get buttonVisibility;
  List<AnimeTrackingData> get animes;
  List<MangaTrackingData> get mangas;
  MediumTrackingState get animeFilterState;
  MediumTrackingState get mangaFilterState;
  TrackingMediumType get trackingType;

  /// Create a copy of AnimeListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimeListStateCopyWith<AnimeListState> get copyWith =>
      _$AnimeListStateCopyWithImpl<AnimeListState>(
          this as AnimeListState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimeListState &&
            (identical(other.buttonVisibility, buttonVisibility) ||
                other.buttonVisibility == buttonVisibility) &&
            const DeepCollectionEquality().equals(other.animes, animes) &&
            const DeepCollectionEquality().equals(other.mangas, mangas) &&
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
      const DeepCollectionEquality().hash(animes),
      const DeepCollectionEquality().hash(mangas),
      animeFilterState,
      mangaFilterState,
      trackingType);

  @override
  String toString() {
    return 'AnimeListState(buttonVisibility: $buttonVisibility, animes: $animes, mangas: $mangas, animeFilterState: $animeFilterState, mangaFilterState: $mangaFilterState, trackingType: $trackingType)';
  }
}

/// @nodoc
abstract mixin class $AnimeListStateCopyWith<$Res> {
  factory $AnimeListStateCopyWith(
          AnimeListState value, $Res Function(AnimeListState) _then) =
      _$AnimeListStateCopyWithImpl;
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
class _$AnimeListStateCopyWithImpl<$Res>
    implements $AnimeListStateCopyWith<$Res> {
  _$AnimeListStateCopyWithImpl(this._self, this._then);

  final AnimeListState _self;
  final $Res Function(AnimeListState) _then;

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
    return _then(_self.copyWith(
      buttonVisibility: null == buttonVisibility
          ? _self.buttonVisibility
          : buttonVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      animes: null == animes
          ? _self.animes
          : animes // ignore: cast_nullable_to_non_nullable
              as List<AnimeTrackingData>,
      mangas: null == mangas
          ? _self.mangas
          : mangas // ignore: cast_nullable_to_non_nullable
              as List<MangaTrackingData>,
      animeFilterState: null == animeFilterState
          ? _self.animeFilterState
          : animeFilterState // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      mangaFilterState: null == mangaFilterState
          ? _self.mangaFilterState
          : mangaFilterState // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      trackingType: null == trackingType
          ? _self.trackingType
          : trackingType // ignore: cast_nullable_to_non_nullable
              as TrackingMediumType,
    ));
  }
}

/// Adds pattern-matching-related methods to [AnimeListState].
extension AnimeListStatePatterns on AnimeListState {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_AnimeListState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AnimeListState() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnimeListState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnimeListState():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_AnimeListState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnimeListState() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool buttonVisibility,
            List<AnimeTrackingData> animes,
            List<MangaTrackingData> mangas,
            MediumTrackingState animeFilterState,
            MediumTrackingState mangaFilterState,
            TrackingMediumType trackingType)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AnimeListState() when $default != null:
        return $default(_that.buttonVisibility, _that.animes, _that.mangas,
            _that.animeFilterState, _that.mangaFilterState, _that.trackingType);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool buttonVisibility,
            List<AnimeTrackingData> animes,
            List<MangaTrackingData> mangas,
            MediumTrackingState animeFilterState,
            MediumTrackingState mangaFilterState,
            TrackingMediumType trackingType)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnimeListState():
        return $default(_that.buttonVisibility, _that.animes, _that.mangas,
            _that.animeFilterState, _that.mangaFilterState, _that.trackingType);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool buttonVisibility,
            List<AnimeTrackingData> animes,
            List<MangaTrackingData> mangas,
            MediumTrackingState animeFilterState,
            MediumTrackingState mangaFilterState,
            TrackingMediumType trackingType)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnimeListState() when $default != null:
        return $default(_that.buttonVisibility, _that.animes, _that.mangas,
            _that.animeFilterState, _that.mangaFilterState, _that.trackingType);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AnimeListState implements AnimeListState {
  _AnimeListState(
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

  /// Create a copy of AnimeListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnimeListStateCopyWith<_AnimeListState> get copyWith =>
      __$AnimeListStateCopyWithImpl<_AnimeListState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimeListState &&
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

  @override
  String toString() {
    return 'AnimeListState(buttonVisibility: $buttonVisibility, animes: $animes, mangas: $mangas, animeFilterState: $animeFilterState, mangaFilterState: $mangaFilterState, trackingType: $trackingType)';
  }
}

/// @nodoc
abstract mixin class _$AnimeListStateCopyWith<$Res>
    implements $AnimeListStateCopyWith<$Res> {
  factory _$AnimeListStateCopyWith(
          _AnimeListState value, $Res Function(_AnimeListState) _then) =
      __$AnimeListStateCopyWithImpl;
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
class __$AnimeListStateCopyWithImpl<$Res>
    implements _$AnimeListStateCopyWith<$Res> {
  __$AnimeListStateCopyWithImpl(this._self, this._then);

  final _AnimeListState _self;
  final $Res Function(_AnimeListState) _then;

  /// Create a copy of AnimeListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? buttonVisibility = null,
    Object? animes = null,
    Object? mangas = null,
    Object? animeFilterState = null,
    Object? mangaFilterState = null,
    Object? trackingType = null,
  }) {
    return _then(_AnimeListState(
      buttonVisibility: null == buttonVisibility
          ? _self.buttonVisibility
          : buttonVisibility // ignore: cast_nullable_to_non_nullable
              as bool,
      animes: null == animes
          ? _self._animes
          : animes // ignore: cast_nullable_to_non_nullable
              as List<AnimeTrackingData>,
      mangas: null == mangas
          ? _self._mangas
          : mangas // ignore: cast_nullable_to_non_nullable
              as List<MangaTrackingData>,
      animeFilterState: null == animeFilterState
          ? _self.animeFilterState
          : animeFilterState // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      mangaFilterState: null == mangaFilterState
          ? _self.mangaFilterState
          : mangaFilterState // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      trackingType: null == trackingType
          ? _self.trackingType
          : trackingType // ignore: cast_nullable_to_non_nullable
              as TrackingMediumType,
    ));
  }
}

// dart format on

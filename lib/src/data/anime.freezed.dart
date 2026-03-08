// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnimeTrackingData {
  /// The ID of the anime
  String get id;

  /// The state of the anime
  @MediumTrackingStateConverter()
  MediumTrackingState get state;

  /// The title of the anime
  String get title;

  /// Episodes in total.
  int get episodesWatched;

  /// Episodes watched.
  int? get episodesTotal;

  /// URL to the thumbnail/cover art for the anime.
  String get thumbnailUrl;

  /// Flag whether the anime is airing
  @BoolConverter()
  bool get airing;

  /// The day of the week the anime is airing
  String? get broadcastDay;

  /// Create a copy of AnimeTrackingData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimeTrackingDataCopyWith<AnimeTrackingData> get copyWith =>
      _$AnimeTrackingDataCopyWithImpl<AnimeTrackingData>(
          this as AnimeTrackingData, _$identity);

  /// Serializes this AnimeTrackingData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimeTrackingData &&
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

  @override
  String toString() {
    return 'AnimeTrackingData(id: $id, state: $state, title: $title, episodesWatched: $episodesWatched, episodesTotal: $episodesTotal, thumbnailUrl: $thumbnailUrl, airing: $airing, broadcastDay: $broadcastDay)';
  }
}

/// @nodoc
abstract mixin class $AnimeTrackingDataCopyWith<$Res> {
  factory $AnimeTrackingDataCopyWith(
          AnimeTrackingData value, $Res Function(AnimeTrackingData) _then) =
      _$AnimeTrackingDataCopyWithImpl;
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
class _$AnimeTrackingDataCopyWithImpl<$Res>
    implements $AnimeTrackingDataCopyWith<$Res> {
  _$AnimeTrackingDataCopyWithImpl(this._self, this._then);

  final AnimeTrackingData _self;
  final $Res Function(AnimeTrackingData) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      episodesWatched: null == episodesWatched
          ? _self.episodesWatched
          : episodesWatched // ignore: cast_nullable_to_non_nullable
              as int,
      episodesTotal: freezed == episodesTotal
          ? _self.episodesTotal
          : episodesTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnailUrl: null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      airing: null == airing
          ? _self.airing
          : airing // ignore: cast_nullable_to_non_nullable
              as bool,
      broadcastDay: freezed == broadcastDay
          ? _self.broadcastDay
          : broadcastDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AnimeTrackingData].
extension AnimeTrackingDataPatterns on AnimeTrackingData {
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
    TResult Function(_AnimeTrackingData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AnimeTrackingData() when $default != null:
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
    TResult Function(_AnimeTrackingData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnimeTrackingData():
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
    TResult? Function(_AnimeTrackingData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnimeTrackingData() when $default != null:
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
            String id,
            @MediumTrackingStateConverter() MediumTrackingState state,
            String title,
            int episodesWatched,
            int? episodesTotal,
            String thumbnailUrl,
            @BoolConverter() bool airing,
            String? broadcastDay)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AnimeTrackingData() when $default != null:
        return $default(
            _that.id,
            _that.state,
            _that.title,
            _that.episodesWatched,
            _that.episodesTotal,
            _that.thumbnailUrl,
            _that.airing,
            _that.broadcastDay);
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
            String id,
            @MediumTrackingStateConverter() MediumTrackingState state,
            String title,
            int episodesWatched,
            int? episodesTotal,
            String thumbnailUrl,
            @BoolConverter() bool airing,
            String? broadcastDay)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnimeTrackingData():
        return $default(
            _that.id,
            _that.state,
            _that.title,
            _that.episodesWatched,
            _that.episodesTotal,
            _that.thumbnailUrl,
            _that.airing,
            _that.broadcastDay);
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
            String id,
            @MediumTrackingStateConverter() MediumTrackingState state,
            String title,
            int episodesWatched,
            int? episodesTotal,
            String thumbnailUrl,
            @BoolConverter() bool airing,
            String? broadcastDay)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnimeTrackingData() when $default != null:
        return $default(
            _that.id,
            _that.state,
            _that.title,
            _that.episodesWatched,
            _that.episodesTotal,
            _that.thumbnailUrl,
            _that.airing,
            _that.broadcastDay);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AnimeTrackingData extends AnimeTrackingData {
  _AnimeTrackingData(
      this.id,
      @MediumTrackingStateConverter() this.state,
      this.title,
      this.episodesWatched,
      this.episodesTotal,
      this.thumbnailUrl,
      @BoolConverter() this.airing,
      this.broadcastDay)
      : super._();
  factory _AnimeTrackingData.fromJson(Map<String, dynamic> json) =>
      _$AnimeTrackingDataFromJson(json);

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

  /// Create a copy of AnimeTrackingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnimeTrackingDataCopyWith<_AnimeTrackingData> get copyWith =>
      __$AnimeTrackingDataCopyWithImpl<_AnimeTrackingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnimeTrackingDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimeTrackingData &&
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

  @override
  String toString() {
    return 'AnimeTrackingData(id: $id, state: $state, title: $title, episodesWatched: $episodesWatched, episodesTotal: $episodesTotal, thumbnailUrl: $thumbnailUrl, airing: $airing, broadcastDay: $broadcastDay)';
  }
}

/// @nodoc
abstract mixin class _$AnimeTrackingDataCopyWith<$Res>
    implements $AnimeTrackingDataCopyWith<$Res> {
  factory _$AnimeTrackingDataCopyWith(
          _AnimeTrackingData value, $Res Function(_AnimeTrackingData) _then) =
      __$AnimeTrackingDataCopyWithImpl;
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
class __$AnimeTrackingDataCopyWithImpl<$Res>
    implements _$AnimeTrackingDataCopyWith<$Res> {
  __$AnimeTrackingDataCopyWithImpl(this._self, this._then);

  final _AnimeTrackingData _self;
  final $Res Function(_AnimeTrackingData) _then;

  /// Create a copy of AnimeTrackingData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_AnimeTrackingData(
      null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as MediumTrackingState,
      null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == episodesWatched
          ? _self.episodesWatched
          : episodesWatched // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == episodesTotal
          ? _self.episodesTotal
          : episodesTotal // ignore: cast_nullable_to_non_nullable
              as int?,
      null == thumbnailUrl
          ? _self.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      null == airing
          ? _self.airing
          : airing // ignore: cast_nullable_to_non_nullable
              as bool,
      freezed == broadcastDay
          ? _self.broadcastDay
          : broadcastDay // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

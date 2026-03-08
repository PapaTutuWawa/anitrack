// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnimeSearchState {
  TrackingMediumType get trackingType;
  String get searchQuery;
  bool get working;
  List<SearchResult> get searchResults;

  /// Create a copy of AnimeSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnimeSearchStateCopyWith<AnimeSearchState> get copyWith =>
      _$AnimeSearchStateCopyWithImpl<AnimeSearchState>(
          this as AnimeSearchState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnimeSearchState &&
            (identical(other.trackingType, trackingType) ||
                other.trackingType == trackingType) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.working, working) || other.working == working) &&
            const DeepCollectionEquality()
                .equals(other.searchResults, searchResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackingType, searchQuery,
      working, const DeepCollectionEquality().hash(searchResults));

  @override
  String toString() {
    return 'AnimeSearchState(trackingType: $trackingType, searchQuery: $searchQuery, working: $working, searchResults: $searchResults)';
  }
}

/// @nodoc
abstract mixin class $AnimeSearchStateCopyWith<$Res> {
  factory $AnimeSearchStateCopyWith(
          AnimeSearchState value, $Res Function(AnimeSearchState) _then) =
      _$AnimeSearchStateCopyWithImpl;
  @useResult
  $Res call(
      {TrackingMediumType trackingType,
      String searchQuery,
      bool working,
      List<SearchResult> searchResults});
}

/// @nodoc
class _$AnimeSearchStateCopyWithImpl<$Res>
    implements $AnimeSearchStateCopyWith<$Res> {
  _$AnimeSearchStateCopyWithImpl(this._self, this._then);

  final AnimeSearchState _self;
  final $Res Function(AnimeSearchState) _then;

  /// Create a copy of AnimeSearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trackingType = null,
    Object? searchQuery = null,
    Object? working = null,
    Object? searchResults = null,
  }) {
    return _then(_self.copyWith(
      trackingType: null == trackingType
          ? _self.trackingType
          : trackingType // ignore: cast_nullable_to_non_nullable
              as TrackingMediumType,
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      working: null == working
          ? _self.working
          : working // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResults: null == searchResults
          ? _self.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<SearchResult>,
    ));
  }
}

/// Adds pattern-matching-related methods to [AnimeSearchState].
extension AnimeSearchStatePatterns on AnimeSearchState {
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
    TResult Function(_AnimeSearchState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AnimeSearchState() when $default != null:
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
    TResult Function(_AnimeSearchState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnimeSearchState():
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
    TResult? Function(_AnimeSearchState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnimeSearchState() when $default != null:
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
    TResult Function(TrackingMediumType trackingType, String searchQuery,
            bool working, List<SearchResult> searchResults)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AnimeSearchState() when $default != null:
        return $default(_that.trackingType, _that.searchQuery, _that.working,
            _that.searchResults);
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
    TResult Function(TrackingMediumType trackingType, String searchQuery,
            bool working, List<SearchResult> searchResults)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnimeSearchState():
        return $default(_that.trackingType, _that.searchQuery, _that.working,
            _that.searchResults);
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
    TResult? Function(TrackingMediumType trackingType, String searchQuery,
            bool working, List<SearchResult> searchResults)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnimeSearchState() when $default != null:
        return $default(_that.trackingType, _that.searchQuery, _that.working,
            _that.searchResults);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _AnimeSearchState implements AnimeSearchState {
  _AnimeSearchState(
      {this.trackingType = TrackingMediumType.anime,
      this.searchQuery = '',
      this.working = false,
      final List<SearchResult> searchResults = const []})
      : _searchResults = searchResults;

  @override
  @JsonKey()
  final TrackingMediumType trackingType;
  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final bool working;
  final List<SearchResult> _searchResults;
  @override
  @JsonKey()
  List<SearchResult> get searchResults {
    if (_searchResults is EqualUnmodifiableListView) return _searchResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  /// Create a copy of AnimeSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnimeSearchStateCopyWith<_AnimeSearchState> get copyWith =>
      __$AnimeSearchStateCopyWithImpl<_AnimeSearchState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnimeSearchState &&
            (identical(other.trackingType, trackingType) ||
                other.trackingType == trackingType) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.working, working) || other.working == working) &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trackingType, searchQuery,
      working, const DeepCollectionEquality().hash(_searchResults));

  @override
  String toString() {
    return 'AnimeSearchState(trackingType: $trackingType, searchQuery: $searchQuery, working: $working, searchResults: $searchResults)';
  }
}

/// @nodoc
abstract mixin class _$AnimeSearchStateCopyWith<$Res>
    implements $AnimeSearchStateCopyWith<$Res> {
  factory _$AnimeSearchStateCopyWith(
          _AnimeSearchState value, $Res Function(_AnimeSearchState) _then) =
      __$AnimeSearchStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {TrackingMediumType trackingType,
      String searchQuery,
      bool working,
      List<SearchResult> searchResults});
}

/// @nodoc
class __$AnimeSearchStateCopyWithImpl<$Res>
    implements _$AnimeSearchStateCopyWith<$Res> {
  __$AnimeSearchStateCopyWithImpl(this._self, this._then);

  final _AnimeSearchState _self;
  final $Res Function(_AnimeSearchState) _then;

  /// Create a copy of AnimeSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? trackingType = null,
    Object? searchQuery = null,
    Object? working = null,
    Object? searchResults = null,
  }) {
    return _then(_AnimeSearchState(
      trackingType: null == trackingType
          ? _self.trackingType
          : trackingType // ignore: cast_nullable_to_non_nullable
              as TrackingMediumType,
      searchQuery: null == searchQuery
          ? _self.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      working: null == working
          ? _self.working
          : working // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResults: null == searchResults
          ? _self._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<SearchResult>,
    ));
  }
}

// dart format on

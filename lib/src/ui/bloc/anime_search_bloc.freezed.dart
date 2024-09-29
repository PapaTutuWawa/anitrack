// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anime_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnimeSearchState {
  TrackingMediumType get trackingType => throw _privateConstructorUsedError;
  String get searchQuery => throw _privateConstructorUsedError;
  bool get working => throw _privateConstructorUsedError;
  List<SearchResult> get searchResults => throw _privateConstructorUsedError;

  /// Create a copy of AnimeSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnimeSearchStateCopyWith<AnimeSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeSearchStateCopyWith<$Res> {
  factory $AnimeSearchStateCopyWith(
          AnimeSearchState value, $Res Function(AnimeSearchState) then) =
      _$AnimeSearchStateCopyWithImpl<$Res, AnimeSearchState>;
  @useResult
  $Res call(
      {TrackingMediumType trackingType,
      String searchQuery,
      bool working,
      List<SearchResult> searchResults});
}

/// @nodoc
class _$AnimeSearchStateCopyWithImpl<$Res, $Val extends AnimeSearchState>
    implements $AnimeSearchStateCopyWith<$Res> {
  _$AnimeSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      trackingType: null == trackingType
          ? _value.trackingType
          : trackingType // ignore: cast_nullable_to_non_nullable
              as TrackingMediumType,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      working: null == working
          ? _value.working
          : working // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResults: null == searchResults
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<SearchResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnimeSearchStateImplCopyWith<$Res>
    implements $AnimeSearchStateCopyWith<$Res> {
  factory _$$AnimeSearchStateImplCopyWith(_$AnimeSearchStateImpl value,
          $Res Function(_$AnimeSearchStateImpl) then) =
      __$$AnimeSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrackingMediumType trackingType,
      String searchQuery,
      bool working,
      List<SearchResult> searchResults});
}

/// @nodoc
class __$$AnimeSearchStateImplCopyWithImpl<$Res>
    extends _$AnimeSearchStateCopyWithImpl<$Res, _$AnimeSearchStateImpl>
    implements _$$AnimeSearchStateImplCopyWith<$Res> {
  __$$AnimeSearchStateImplCopyWithImpl(_$AnimeSearchStateImpl _value,
      $Res Function(_$AnimeSearchStateImpl) _then)
      : super(_value, _then);

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
    return _then(_$AnimeSearchStateImpl(
      trackingType: null == trackingType
          ? _value.trackingType
          : trackingType // ignore: cast_nullable_to_non_nullable
              as TrackingMediumType,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      working: null == working
          ? _value.working
          : working // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResults: null == searchResults
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<SearchResult>,
    ));
  }
}

/// @nodoc

class _$AnimeSearchStateImpl implements _AnimeSearchState {
  _$AnimeSearchStateImpl(
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

  @override
  String toString() {
    return 'AnimeSearchState(trackingType: $trackingType, searchQuery: $searchQuery, working: $working, searchResults: $searchResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnimeSearchStateImpl &&
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

  /// Create a copy of AnimeSearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnimeSearchStateImplCopyWith<_$AnimeSearchStateImpl> get copyWith =>
      __$$AnimeSearchStateImplCopyWithImpl<_$AnimeSearchStateImpl>(
          this, _$identity);
}

abstract class _AnimeSearchState implements AnimeSearchState {
  factory _AnimeSearchState(
      {final TrackingMediumType trackingType,
      final String searchQuery,
      final bool working,
      final List<SearchResult> searchResults}) = _$AnimeSearchStateImpl;

  @override
  TrackingMediumType get trackingType;
  @override
  String get searchQuery;
  @override
  bool get working;
  @override
  List<SearchResult> get searchResults;

  /// Create a copy of AnimeSearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnimeSearchStateImplCopyWith<_$AnimeSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

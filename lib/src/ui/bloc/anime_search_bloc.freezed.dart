// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'anime_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnimeSearchState {
  String get searchQuery => throw _privateConstructorUsedError;
  bool get working => throw _privateConstructorUsedError;
  List<AnimeSearchResult> get searchResults =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnimeSearchStateCopyWith<AnimeSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeSearchStateCopyWith<$Res> {
  factory $AnimeSearchStateCopyWith(
          AnimeSearchState value, $Res Function(AnimeSearchState) then) =
      _$AnimeSearchStateCopyWithImpl<$Res>;
  $Res call(
      {String searchQuery,
      bool working,
      List<AnimeSearchResult> searchResults});
}

/// @nodoc
class _$AnimeSearchStateCopyWithImpl<$Res>
    implements $AnimeSearchStateCopyWith<$Res> {
  _$AnimeSearchStateCopyWithImpl(this._value, this._then);

  final AnimeSearchState _value;
  // ignore: unused_field
  final $Res Function(AnimeSearchState) _then;

  @override
  $Res call({
    Object? searchQuery = freezed,
    Object? working = freezed,
    Object? searchResults = freezed,
  }) {
    return _then(_value.copyWith(
      searchQuery: searchQuery == freezed
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      working: working == freezed
          ? _value.working
          : working // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResults: searchResults == freezed
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<AnimeSearchResult>,
    ));
  }
}

/// @nodoc
abstract class _$$_AnimeSearchStateCopyWith<$Res>
    implements $AnimeSearchStateCopyWith<$Res> {
  factory _$$_AnimeSearchStateCopyWith(
          _$_AnimeSearchState value, $Res Function(_$_AnimeSearchState) then) =
      __$$_AnimeSearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String searchQuery,
      bool working,
      List<AnimeSearchResult> searchResults});
}

/// @nodoc
class __$$_AnimeSearchStateCopyWithImpl<$Res>
    extends _$AnimeSearchStateCopyWithImpl<$Res>
    implements _$$_AnimeSearchStateCopyWith<$Res> {
  __$$_AnimeSearchStateCopyWithImpl(
      _$_AnimeSearchState _value, $Res Function(_$_AnimeSearchState) _then)
      : super(_value, (v) => _then(v as _$_AnimeSearchState));

  @override
  _$_AnimeSearchState get _value => super._value as _$_AnimeSearchState;

  @override
  $Res call({
    Object? searchQuery = freezed,
    Object? working = freezed,
    Object? searchResults = freezed,
  }) {
    return _then(_$_AnimeSearchState(
      searchQuery: searchQuery == freezed
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      working: working == freezed
          ? _value.working
          : working // ignore: cast_nullable_to_non_nullable
              as bool,
      searchResults: searchResults == freezed
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<AnimeSearchResult>,
    ));
  }
}

/// @nodoc

class _$_AnimeSearchState implements _AnimeSearchState {
  _$_AnimeSearchState(
      {this.searchQuery = '',
      this.working = false,
      final List<AnimeSearchResult> searchResults = const []})
      : _searchResults = searchResults;

  @override
  @JsonKey()
  final String searchQuery;
  @override
  @JsonKey()
  final bool working;
  final List<AnimeSearchResult> _searchResults;
  @override
  @JsonKey()
  List<AnimeSearchResult> get searchResults {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  @override
  String toString() {
    return 'AnimeSearchState(searchQuery: $searchQuery, working: $working, searchResults: $searchResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeSearchState &&
            const DeepCollectionEquality()
                .equals(other.searchQuery, searchQuery) &&
            const DeepCollectionEquality().equals(other.working, working) &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(searchQuery),
      const DeepCollectionEquality().hash(working),
      const DeepCollectionEquality().hash(_searchResults));

  @JsonKey(ignore: true)
  @override
  _$$_AnimeSearchStateCopyWith<_$_AnimeSearchState> get copyWith =>
      __$$_AnimeSearchStateCopyWithImpl<_$_AnimeSearchState>(this, _$identity);
}

abstract class _AnimeSearchState implements AnimeSearchState {
  factory _AnimeSearchState(
      {final String searchQuery,
      final bool working,
      final List<AnimeSearchResult> searchResults}) = _$_AnimeSearchState;

  @override
  String get searchQuery;
  @override
  bool get working;
  @override
  List<AnimeSearchResult> get searchResults;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeSearchStateCopyWith<_$_AnimeSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

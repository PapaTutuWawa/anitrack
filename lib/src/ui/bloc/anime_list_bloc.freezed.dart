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

  @JsonKey(ignore: true)
  $AnimeListStateCopyWith<AnimeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnimeListStateCopyWith<$Res> {
  factory $AnimeListStateCopyWith(
          AnimeListState value, $Res Function(AnimeListState) then) =
      _$AnimeListStateCopyWithImpl<$Res>;
  $Res call({List<AnimeTrackingData> animes});
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
  }) {
    return _then(_value.copyWith(
      animes: animes == freezed
          ? _value.animes
          : animes // ignore: cast_nullable_to_non_nullable
              as List<AnimeTrackingData>,
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
  $Res call({List<AnimeTrackingData> animes});
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
  }) {
    return _then(_$_AnimeListState(
      animes: animes == freezed
          ? _value._animes
          : animes // ignore: cast_nullable_to_non_nullable
              as List<AnimeTrackingData>,
    ));
  }
}

/// @nodoc

class _$_AnimeListState implements _AnimeListState {
  _$_AnimeListState({final List<AnimeTrackingData> animes = const []})
      : _animes = animes;

  final List<AnimeTrackingData> _animes;
  @override
  @JsonKey()
  List<AnimeTrackingData> get animes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_animes);
  }

  @override
  String toString() {
    return 'AnimeListState(animes: $animes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnimeListState &&
            const DeepCollectionEquality().equals(other._animes, _animes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_animes));

  @JsonKey(ignore: true)
  @override
  _$$_AnimeListStateCopyWith<_$_AnimeListState> get copyWith =>
      __$$_AnimeListStateCopyWithImpl<_$_AnimeListState>(this, _$identity);
}

abstract class _AnimeListState implements AnimeListState {
  factory _AnimeListState({final List<AnimeTrackingData> animes}) =
      _$_AnimeListState;

  @override
  List<AnimeTrackingData> get animes;
  @override
  @JsonKey(ignore: true)
  _$$_AnimeListStateCopyWith<_$_AnimeListState> get copyWith =>
      throw _privateConstructorUsedError;
}

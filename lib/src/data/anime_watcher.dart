import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_watcher.freezed.dart';
part 'anime_watcher.g.dart';

/// Data about someone to watch an anime with.
@freezed
abstract class AnimeWatcher with _$AnimeWatcher {
  factory AnimeWatcher(
    /// Name of the person to watch the anime with.
    String name,
  ) = _AnimeWatcher;

  AnimeWatcher._();

  /// JSON
  factory AnimeWatcher.fromJson(Map<String, dynamic> json) =>
      _$AnimeWatcherFromJson(json);
}

part of 'settings_bloc.dart';

enum ImportListType {
  // MyAnimeList
  mal,
}

abstract class SettingsEvent {}

/// Triggered when an anime list is imported
class AnimeListImportedEvent extends SettingsEvent {
  AnimeListImportedEvent(
    this.path,
    this.type,
  );

  /// The path to the list we're importing
  final String path;

  /// The type of list we're importing
  final ImportListType type;
}

/// Triggered when a manga list is imported
class MangaListImportedEvent extends SettingsEvent {
  MangaListImportedEvent(
    this.path,
    this.type,
  );

  /// The path to the list we're importing
  final String path;

  /// The type of list we're importing
  final ImportListType type;
}

/// Triggered when a data export should be produced.
class DataExportedEvent extends SettingsEvent {
  DataExportedEvent(this.path);

  /// The path where the export should be stored.
  final String path;
}

/// Triggered when a data export has been picked for import.
class DataImportedEvent extends SettingsEvent {
  DataImportedEvent(this.path);

  /// The path of the data export to import.
  final String path;
}

import 'dart:io';

import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/anime_watcher.dart';
import 'package:anitrack/src/data/manga.dart';
import 'package:anitrack/src/service/migrations/0000_airing.dart';
import 'package:anitrack/src/service/migrations/0000_score.dart';
import 'package:anitrack/src/service/migrations/0001_anime_watcher.dart';
import 'package:anitrack/src/service/migrations/0002_anilist.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

const animeTable = 'Anime';
const mangaTable = 'Manga';
const animeWatcherTable = 'AnimeWatchers';
const animeWatcherJoinTable = 'AnimeWatchersJoin';

extension BoolToInt on bool {
  int toInt() {
    return this ? 1 : 0;
  }
}

extension IntToBool on int {
  bool toBool() {
    return this == 1;
  }
}

Future<void> _createDatabase(Database db, int version) async {
  await db.execute(
    '''
    CREATE TABLE $animeTable(
      id              TEXT NOT NULL PRIMARY KEY,
      state           INTEGER NOT NULL,
      episodesTotal   INTEGER,
      episodesWatched INTEGER NOT NULL,
      thumbnailUrl    TEXT NOT NULL,
      title           TEXT NOT NULL,
      otherTitles     TEXT NOT NULL,
      score           INTEGER,
      airing          INTEGER NOT NULL,
      broadcastDay    TEXT,
      source          TEXT NOT NULL
    )''',
  );
  await db.execute(
    '''
    CREATE TABLE $mangaTable(
      id            TEXT NOT NULL PRIMARY KEY,
      state INTEGER NOT NULL,
      chaptersTotal INTEGER,
      chaptersRead  INTEGER NOT NULL,
      volumesOwned  INTEGER NOT NULL,
      thumbnailUrl  TEXT NOT NULL,
      title         TEXT NOT NULL,
      otherTitles   TEXT NOT NULL,
      score         INTEGER,
      source        TEXT NOT NULL
    )''',
  );
  await db.execute(
    '''
    CREATE TABLE $animeWatcherTable(
      name          TEXT NOT NULL PRIMARY KEY
    )''',
  );
  await db.execute(
    '''
    CREATE TABLE $animeWatcherJoinTable(
      name          TEXT NOT NULL,
      anime         TEXT NOT NULL,
      CONSTRAINT pk_watcher_join_table PRIMARY KEY(name, anime),
      CONSTRAINT fk_watcher FOREIGN KEY (name) REFERENCES $animeWatcherTable(name),
      CONSTRAINT fk_anime FOREIGN KEY (anime) REFERENCES $animeTable(id)
    )''',
  );
}

class DatabaseService {
  /// The actual sqlite database connection.
  late final Database _db;

  /// Cached AnimeWatchers.
  List<AnimeWatcher>? _watcherCache;

  Future<void> initialize() async {
    // Allow initializing the database on Windows and Linux as well.
    if (Platform.isLinux || Platform.isWindows) {
      sqfliteFfiInit();
      databaseFactory = databaseFactoryFfi;
    }

    _db = await openDatabase(
      'anitrack.db',
      version: 5,
      onConfigure: (db) async {
        // In order to do schema changes during database upgrades, we disable foreign
        // keys in the onConfigure phase, but re-enable them here.
        // See https://github.com/tekartik/sqflite/issues/624#issuecomment-813324273
        // for the "solution".
        await db.execute('PRAGMA foreign_keys = OFF');
      },
      onOpen: (db) async {
        await db.execute('PRAGMA foreign_keys = ON');
      },
      onCreate: _createDatabase,
      onUpgrade: (db, oldVersion, newVersion) async {
        if (oldVersion < 2) {
          await migrateFromV1ToV2(db);
        }
        if (oldVersion < 3) {
          await migrateFromV2ToV3(db);
        }
        if (oldVersion < 4) {
          await migrateFromV3ToV4(db);
        }
        if (oldVersion < 5) {
          await migrateFromV4ToV5(db);
        }
      },
    );
    print(_db.path);
  }

  Future<List<AnimeTrackingData>> loadAnimes() async {
    final animes = await _db.query(animeTable);

    return animes
        .cast<Map<String, dynamic>>()
        .map(AnimeTrackingData.fromJson)
        .toList();
  }

  Future<List<MangaTrackingData>> loadMangas() async {
    final mangas = await _db.query(mangaTable);

    return mangas
        .cast<Map<String, dynamic>>()
        .map(MangaTrackingData.fromJson)
        .toList();
  }

  Future<void> addAnime(AnimeTrackingData data) async {
    await _db.insert(
      animeTable,
      data.toJson(),
    );
  }

  Future<void> updateAnime(AnimeTrackingData data) async {
    await _db.update(
      animeTable,
      data.toJson(),
      where: 'id = ?',
      whereArgs: [data.id],
    );
  }

  Future<AnimeTrackingData> incrementAnimeWatchCounter(
    AnimeTrackingData data,
    int value,
  ) async {
    final result = await _db.rawQuery(
      'UPDATE $animeTable SET episodesWatched = episodesWatched + $value WHERE id = ? RETURNING *',
      [
        data.id,
      ],
    );

    return result
        .cast<Map<String, dynamic>>()
        .map(AnimeTrackingData.fromJson)
        .toList()
        .first;
  }

  Future<void> deleteAnime(String id) async {
    await _db.delete(
      animeTable,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<void> addManga(MangaTrackingData data) async {
    await _db.insert(
      mangaTable,
      data.toJson(),
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );
  }

  Future<void> updateManga(MangaTrackingData data) async {
    await _db.update(
      mangaTable,
      data.toJson(),
      where: 'id = ?',
      whereArgs: [data.id],
    );
  }

  Future<void> deleteManga(String id) async {
    await _db.delete(
      mangaTable,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<MangaTrackingData> incrementMangaReadChapters(
    MangaTrackingData data,
    int value,
  ) async {
    final result = await _db.rawQuery(
      'UPDATE $mangaTable SET episodesWatched = chaptersRead + $value WHERE id = ? RETURNING *',
      [
        data.id,
      ],
    );

    return result
        .cast<Map<String, dynamic>>()
        .map(MangaTrackingData.fromJson)
        .toList()
        .first;
  }

  /// Queries all anime watchers.
  ///
  /// Returns the list of AnimeWatchers in the database. May be empty.
  Future<List<AnimeWatcher>> getAnimeWatchers() async {
    if (_watcherCache != null) {
      return _watcherCache!;
    }

    final dbResults = await _db.query(
      animeWatcherTable,
    );

    final results = dbResults
        .cast<Map<String, dynamic>>()
        .map(AnimeWatcher.fromJson)
        .toList();
    _watcherCache = results;
    return results;
  }

  /// Removes an AnimeWatcher from the database.
  ///
  /// @watcher The watcher to be removed from the database.
  Future<void> deleteAnimeWatcher(AnimeWatcher watcher) async {
    await _db.delete(
      animeWatcherJoinTable,
      where: 'name = ?',
      whereArgs: [watcher.name],
    );
    await _db.delete(
      animeWatcherTable,
      where: 'name = ?',
      whereArgs: [watcher.name],
    );
    _watcherCache?.removeWhere((item) => item.name == watcher.name);
  }

  /// Adds an AnimeWatcher to the database.
  ///
  /// @watcher The watcher to add to the database.
  Future<void> addWatcher(AnimeWatcher watcher) async {
    await _db.insert(
      animeWatcherTable,
      watcher.toJson(),
    );
    _watcherCache?.add(watcher);
  }

  Future<List<AnimeWatcher>> getWatchersForAnime(
    AnimeTrackingData anime,
  ) async {
    final dbResults = await _db.rawQuery(
      '''
      SELECT * FROM $animeWatcherTable
        JOIN $animeWatcherJoinTable ON $animeWatcherTable.name = $animeWatcherJoinTable.name
        WHERE anime = ?;
      ''',
      [
        anime.id,
      ],
    );

    return dbResults
        .cast<Map<String, dynamic>>()
        .map(AnimeWatcher.fromJson)
        .toList();
  }

  Future<void> associateWatcherWithAnime(
    AnimeWatcher watcher,
    AnimeTrackingData anime,
  ) async {
    await _db.insert(
      animeWatcherJoinTable,
      {
        'name': watcher.name,
        'anime': anime.id,
      },
    );
  }

  Future<void> disassociateWatcherWithAnime(
    AnimeWatcher watcher,
    AnimeTrackingData anime,
  ) async {
    await _db.delete(
      animeWatcherJoinTable,
      where: 'name = ? and anime = ?',
      whereArgs: [watcher.name, anime.id],
    );
  }
}

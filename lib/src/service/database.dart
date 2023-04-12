import 'package:anitrack/src/data/anime.dart';
import 'package:anitrack/src/data/manga.dart';
import 'package:anitrack/src/service/migrations/0000_score.dart';
import 'package:sqflite/sqflite.dart';

const animeTable = 'Anime';
const mangaTable = 'Manga';

Future<void> _createDatabase(Database db, int version) async {
  await db.execute(
    '''
    CREATE TABLE $animeTable(
      id TEXT NOT NULL PRIMARY KEY,
      state INTEGER NOT NULL,
      episodesTotal INTEGER,
      episodesWatched INTEGER NOT NULL,
      thumbnailUrl TEXT NOT NULL,
      title TEXT NOT NULL,
      score INTEGER
    )''',
  );
  await db.execute(
    '''
    CREATE TABLE $mangaTable(
      id TEXT NOT NULL PRIMARY KEY,
      state INTEGER NOT NULL,
      chaptersTotal INTEGER,
      chaptersRead INTEGER NOT NULL,
      volumesOwned INTEGER NOT NULL,
      thumbnailUrl TEXT NOT NULL,
      title TEXT NOT NULL,
      score INTEGER
    )''',
  );
}

class DatabaseService {
  late final Database _db;

  Future<void> initialize() async {
    _db = await openDatabase(
      'anitrack.db',
      version: 2,
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
      },
    );
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
      conflictAlgorithm: ConflictAlgorithm.ignore,
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
}

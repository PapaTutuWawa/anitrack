import 'package:anitrack/src/data/anime.dart';
import 'package:sqflite/sqflite.dart';

const animeTable = 'Anime';

Future<void> _createDatabase(Database db, int version) async {
  await db.execute(
    '''
    CREATE TABLE $animeTable(
      id TEXT NOT NULL PRIMARY KEY,
      state INTEGER NOT NULL,
      episodesTotal INTEGER,
      episodesWatched INTEGER NOT NULL,
      thumbnailUrl TEXT NOT NULL,
      title TEXT NOT NULL
    )''',
  );
}

class DatabaseService {
  late final Database _db;

  Future<void> initialize() async {
    _db = await openDatabase(
      'anitrack.db',
      version: 1,
      onCreate: _createDatabase,
    );
  }

  Future<List<AnimeTrackingData>> loadAnimes() async {
    final animes = await _db.query(animeTable);

    return animes
      .cast<Map<String, dynamic>>()
      .map((Map<String, dynamic> anime) => AnimeTrackingData.fromJson(anime))
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
}

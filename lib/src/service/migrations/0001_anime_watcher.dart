import 'package:anitrack/src/service/database.dart';
import 'package:sqflite/sqflite.dart';

Future<void> migrateFromV3ToV4(Database db) async {
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

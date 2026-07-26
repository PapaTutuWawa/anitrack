import 'package:anitrack/src/service/database.dart';
import 'package:sqflite/sqflite.dart';

Future<void> migrateFromV6ToV7(Database db) async {
  await db.execute(
    '''
    CREATE TABLE ${animeWatcherJoinTable}_2 (
      name          TEXT NOT NULL,
      anime         TEXT NOT NULL,
      CONSTRAINT pk_watcher_join_table PRIMARY KEY(name, anime),
      CONSTRAINT fk_watcher FOREIGN KEY (name) REFERENCES $animeWatcherTable(name) ON DELETE CASCADE,
      CONSTRAINT fk_anime FOREIGN KEY (anime) REFERENCES $animeTable(id) ON DELETE CASCADE
    );''',
  );
  await db.execute(
    'INSERT INTO ${animeWatcherJoinTable}_2 SELECT * from $animeWatcherJoinTable;',
  );
  await db.execute('DROP TABLE $animeWatcherJoinTable');
  await db.execute(
    'ALTER TABLE ${animeWatcherJoinTable}_2 RENAME TO $animeWatcherJoinTable',
  );
}

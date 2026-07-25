import 'package:anitrack/src/service/database.dart';
import 'package:sqflite/sqflite.dart';

Future<void> migrateFromV5ToV6(Database db) async {
  await db.execute(
    '''
    ALTER TABLE $animeTable ADD COLUMN otherTitles TEXT NOT NULL DEFAULT '{}';
    ''',
  );
  await db.execute(
    '''
    ALTER TABLE $mangaTable ADD COLUMN otherTitles TEXT NOT NULL DEFAULT '{}';
    ''',
  );
}

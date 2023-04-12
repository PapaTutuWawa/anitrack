import 'package:anitrack/src/service/database.dart';
import 'package:sqflite/sqflite.dart';

Future<void> migrateFromV1ToV2(Database db) async {
  await db.execute(
    'ALTER TABLE $animeTable ADD COLUMN score INTEGER DEFAULT NULL;',
  );
  await db.execute(
    'ALTER TABLE $mangaTable ADD COLUMN score INTEGER DEFAULT NULL;',
  );
}

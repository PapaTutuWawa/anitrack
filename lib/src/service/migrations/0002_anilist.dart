import 'package:anitrack/src/service/database.dart';
import 'package:sqflite/sqflite.dart';

Future<void> migrateFromV4ToV5(Database db) async {
  await db.execute(
    '''
    ALTER TABLE $animeTable ADD COLUMN source TEXT NOT NULL DEFAULT 'mal';
    ''',
  );
  await db.execute(
    '''
    ALTER TABLE $mangaTable ADD COLUMN source TEXT NOT NULL DEFAULT 'mal';
    ''',
  );
}

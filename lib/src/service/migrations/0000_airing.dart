import 'package:anitrack/src/service/database.dart';
import 'package:sqflite/sqflite.dart';

Future<void> migrateFromV2ToV3(Database db) async {
  await db.execute(
    'ALTER TABLE $animeTable ADD COLUMN airing INTEGER NOT NULL DEFAULT ${true.toInt()};',
  );
  await db.execute(
    'ALTER TABLE $animeTable ADD COLUMN broadcastDay TEXT;',
  );
}

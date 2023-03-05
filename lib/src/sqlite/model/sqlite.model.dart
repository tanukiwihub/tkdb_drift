import 'package:drift/drift.dart';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:path/path.dart' as p;

part 'sqlite.model.g.dart';

class Radicals extends Table {
  @override
  String get tableName => 'radical';

  TextColumn get radicalId => text()();
  TextColumn get literal => text().unique()();
  IntColumn get number => integer()();
  IntColumn get strokes => integer()();
  TextColumn get variantOf =>
      text().nullable().references(Radicals, #radicalId)();

  @override
  Set<Column> get primaryKey => {radicalId};
}

class RadicalMeanings extends Table {
  @override
  String get tableName => 'radical_meaning';

  TextColumn get radicalId => text().references(Radicals, #radicalId)();
  IntColumn get position => integer()();
  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {radicalId, position};
}

class RadicalReadings extends Table {
  @override
  String get tableName => 'radical_reading';

  TextColumn get radicalId => text().references(Radicals, #radicalId)();
  IntColumn get position => integer()();
  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {radicalId, position};
}

// this annotation tells drift to prepare a database class that uses both of the
// tables we just defined. We'll see how to use that database class in a moment.

@DriftDatabase(tables: [Radicals, RadicalMeanings, RadicalReadings])
class TKDBDatabase extends _$TKDBDatabase {
  // we tell the database where to store the data with this constructor
  TKDBDatabase() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.

    Directory current = Directory.current;
    final file = File(p.join(current.path, 'db/tkdb.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}

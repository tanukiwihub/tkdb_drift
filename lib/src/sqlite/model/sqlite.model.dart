import 'package:drift/drift.dart';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:path/path.dart' as p;

part 'sqlite.model.g.dart';

//
// Global keywords
//

class Lang extends Table {
  @override
  String get tableName => 'lang';

  TextColumn get radicalId => text()();
  TextColumn get literal => text().unique()();
  IntColumn get number => integer()();
  IntColumn get strokes => integer()();
  TextColumn get variantOf =>
      text().nullable().references(Radicals, #radicalId)();

  @override
  Set<Column> get primaryKey => {radicalId};
}

class KanjiReadingTypes extends Table {
  @override
  String get tableName => 'kanji_reading_type';

  TextColumn get kanjiReadingTypeId => text()();
  TextColumn get descr => text()();

  @override
  Set<Column> get primaryKey => {kanjiReadingTypeId};
}

//
// Radicals
//

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

//
// Kanji
//

class Kanjis extends Table {
  @override
  String get tableName => 'kanji';

  TextColumn get kanjiId => text()();
  TextColumn get literal => text().unique()();

  @override
  Set<Column> get primaryKey => {kanjiId};
}

class KanjiReadings extends Table {
  @override
  String get tableName => 'kanji_reading';

  TextColumn get kanjiId => text().references(Kanjis, #kanjiId)();
  IntColumn get position => integer()();
  TextColumn get value => text()();

  TextColumn get kanjiReadingTypeId =>
      text().references(KanjiReadingTypes, #kanjiReadingTypeId)();

  @override
  Set<Column> get primaryKey => {kanjiId, kanjiReadingTypeId, position};
}

//
// Database
//

@DriftDatabase(tables: [
  Radicals,
  RadicalMeanings,
  RadicalReadings,
  Kanjis,
  KanjiReadings,
  KanjiReadingTypes
])
class TKDBDatabase extends _$TKDBDatabase {
  TKDBDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    Directory current = Directory.current;
    final file = File(p.join(current.path, 'db/tkdb.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}

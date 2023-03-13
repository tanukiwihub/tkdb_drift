import 'package:drift/drift.dart';
import 'dart:io';

import 'package:drift/native.dart';
import 'package:path/path.dart' as p;

part 'sqlite.model.g.dart';

//
// Global keywords
//

class Langs extends Table {
  @override
  String get tableName => 'lang';

  TextColumn get langId => text()();
  TextColumn get englishName => text().unique()();

  @override
  Set<Column> get primaryKey => {langId};
}

class JlptLevels extends Table {
  @override
  String get tableName => 'jlpt';

  TextColumn get jlptId => text()();
  TextColumn get descr => text().unique()();

  @override
  Set<Column> get primaryKey => {jlptId};
}

class KanjiGrades extends Table {
  @override
  String get tableName => 'kanji_grade';

  TextColumn get kanjiGradeId => text()();
  TextColumn get descr => text()();

  @override
  Set<Column> get primaryKey => {kanjiGradeId};
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
  TextColumn get hexcode => text().unique()();
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
  TextColumn get hexcode => text().unique()();
  IntColumn get strokes => integer().nullable()();
  IntColumn get frequencyJ => integer().nullable()();
  TextColumn get jlptId => text().nullable().references(JlptLevels, #jlptId)();
  TextColumn get kanjiGradeId =>
      text().nullable().references(KanjiGrades, #kanjiGradeId)();

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

class KanjiMeanings extends Table {
  @override
  String get tableName => 'kanji_meaning';

  TextColumn get kanjiId => text().references(Kanjis, #kanjiId)();
  TextColumn get langId => text().references(Langs, #langId)();
  IntColumn get position => integer()();
  TextColumn get value => text()();

  @override
  Set<Column> get primaryKey => {kanjiId, langId, position};
}

class KanjiParts extends Table {
  @override
  String get tableName => 'kanji_part';

  TextColumn get kanjiId => text().references(Kanjis, #kanjiId)();
  IntColumn get position => integer()();
  TextColumn get partKanjiId =>
      text().nullable().references(Kanjis, #kanjiId)();
  TextColumn get partRadicalId =>
      text().nullable().references(Radicals, #radicalId)();
  TextColumn get partComponent => text().nullable()();

  @override
  Set<Column> get primaryKey => {kanjiId, position};
}

class KanjiLookalikes extends Table {
  @override
  String get tableName => 'kanji_lookalike';

  TextColumn get kanjiId => text().references(Kanjis, #kanjiId)();
  TextColumn get lookalikeKanjiId => text().references(Kanjis, #kanjiId)();

  @override
  Set<Column> get primaryKey => {kanjiId, lookalikeKanjiId};
}

class KanjiAntonyms extends Table {
  @override
  String get tableName => 'kanji_antonym';

  TextColumn get kanjiId => text().references(Kanjis, #kanjiId)();
  TextColumn get antonymKanjiId => text().references(Kanjis, #kanjiId)();

  @override
  Set<Column> get primaryKey => {kanjiId, antonymKanjiId};
}

class KanjiSynonyms extends Table {
  @override
  String get tableName => 'kanji_synonym';

  TextColumn get kanjiId => text().references(Kanjis, #kanjiId)();
  TextColumn get synonymKanjiId => text().references(Kanjis, #kanjiId)();

  @override
  Set<Column> get primaryKey => {kanjiId, synonymKanjiId};
}

class KanjiVariants extends Table {
  @override
  String get tableName => 'kanji_variant';

  TextColumn get kanjiId => text().references(Kanjis, #kanjiId)();
  TextColumn get variantKanjiId => text().references(Kanjis, #kanjiId)();

  @override
  Set<Column> get primaryKey => {kanjiId, variantKanjiId};
}

//
// Database
//

@DriftDatabase(
  tables: [
    JlptLevels,
    Radicals,
    RadicalMeanings,
    RadicalReadings,
    Kanjis,
    KanjiGrades,
    KanjiReadings,
    KanjiReadingTypes,
    KanjiMeanings,
    KanjiParts,
    KanjiLookalikes,
    KanjiAntonyms,
    KanjiSynonyms,
    KanjiVariants,
  ],
  include: {'tables.drift'},
)
class TKDBDatabase extends _$TKDBDatabase {
  TKDBDatabase() : super(_openConnection());

  Future<List<Kanji>> get allKanjiEntries => select(kanjis).get();

  Future<Kanji?> getKanjiEntry(String kanjiId) {
    return (select(kanjis)..where((t) => t.kanjiId.equals(kanjiId)))
        .getSingleOrNull();
  }

  Future<KanjiReading?> getKanjiReadingEntry(String kanjiId) {
    return (select(kanjiReadings)..where((t) => t.kanjiId.equals(kanjiId)))
        .getSingleOrNull();
  }

  Future<List<String>> getKanjiReadings(
      String kanjiId, String kanjiReadingTypeId) {
    final query = select(kanjiReadings)
      ..where((t) =>
          t.kanjiId.equals(kanjiId) &
          t.kanjiReadingTypeId.equals(kanjiReadingTypeId))
      ..orderBy([(t) => OrderingTerm(expression: t.position)]);

    return query.map((row) => row.value.replaceAll('.', '')).get();
  }

  Future<List<String>> getKanjiMeanings(String kanjiId) {
    final query = select(kanjiMeanings)
      ..where((t) => t.kanjiId.equals(kanjiId))
      ..orderBy([(t) => OrderingTerm(expression: t.position)]);

    return query.map((row) => row.value).get();
  }

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

import 'package:collection/collection.dart';
import 'package:drift/drift.dart';

import '../json/model/tkdb.model.dart';
import 'model/sqlite.model.dart';

class TKDBDriftMapper {
  final TKDB tkdbJson;
  final TKDBDatabase database;

  TKDBDriftMapper({
    required this.tkdbJson,
    required this.database,
  });

  Future<void> upsertTKDB() async {
    await _upsertTags(tkdbJson.tags);
    await _upsertRadicals(tkdbJson.radicals);
    await _upsertKanjis(tkdbJson.kanji);
  }

  //
  // Tags
  //

  Future<void> _upsertTags(TKDBTag tags) async {
    await _upsertTagKanjiReadingType(tags.kanjiReadingType);
  }

  Future<void> _upsertTagKanjiReadingType(Map<String, String> tag) async {
    for (final key in tag.keys) {
      final descr = tag[key];
      if (descr != null) {
        final entry = KanjiReadingTypesCompanion(
          kanjiReadingTypeId: Value(key),
          descr: Value(descr),
        );
        await database
            .into(database.kanjiReadingTypes)
            .insertOnConflictUpdate(entry);
      }
    }
  }

  //
  // Radicals
  //

  Future<void> _upsertRadicals(List<TKDBRadical> radicals) async {
    for (final radical in radicals) {
      final variantOf = radicals
          .firstWhereOrNull((r) => r.literal == radical.variantOf)
          ?.kvgHexcode;

      final entry = RadicalsCompanion(
        radicalId: Value(radical.kvgHexcode),
        literal: Value(radical.literal),
        number: Value(radical.number),
        strokes: Value(radical.strokecount),
        variantOf: Value(variantOf),
      );
      await database.into(database.radicals).insertOnConflictUpdate(entry);

      await _upsertRadicalMeanings(radical);
      await _upsertRadicalReadings(radical);
    }
  }

  Future<void> _upsertRadicalMeanings(TKDBRadical radical) async {
    int position = 0;
    for (final meaning in radical.meaning) {
      final entry = RadicalMeaningsCompanion(
        radicalId: Value(radical.kvgHexcode),
        position: Value(position),
        value: Value(meaning),
      );

      await database
          .into(database.radicalMeanings)
          .insertOnConflictUpdate(entry);
      position++;
    }
  }

  Future<void> _upsertRadicalReadings(TKDBRadical radical) async {
    int position = 0;
    for (final reading in radical.reading) {
      final entry = RadicalReadingsCompanion(
        radicalId: Value(radical.kvgHexcode),
        position: Value(position),
        value: Value(reading),
      );

      await database
          .into(database.radicalReadings)
          .insertOnConflictUpdate(entry);
      position++;
    }
  }

  //
  // Kanji
  //

  Future<void> _upsertKanjis(List<TKDBKanji> kanjis) async {
    for (final kanji in kanjis) {
      final kanjiId = kanji.misc.kvgHexcode;

      final entry = KanjisCompanion(
        kanjiId: Value(kanjiId),
        literal: Value(kanji.literal),
      );

      await database.into(database.kanjis).insertOnConflictUpdate(entry);
      await _upsertKanjiReadings(kanjiId, kanji.reading);
    }
  }

  Future<void> _upsertKanjiReadings(
      String kanjiId, List<TKDBKanjiReading> readings) async {
    Map<String, int> position = {};

    for (final reading in readings) {
      final kanjiReadingTypeEntry =
          await (database.select(database.kanjiReadingTypes)
                ..where((t) => t.kanjiReadingTypeId.equals(reading.type)))
              .getSingleOrNull();

      if (kanjiReadingTypeEntry != null) {
        if (kanjiId == '09a13') {
          print(reading);
        }

        final kanjiReadingTypeId = kanjiReadingTypeEntry.kanjiReadingTypeId;

        int typePosition = position[kanjiReadingTypeId] ?? 0;

        final entry = KanjiReadingsCompanion(
          kanjiId: Value(kanjiId),
          kanjiReadingTypeId: Value(kanjiReadingTypeId),
          position: Value(typePosition),
          value: Value(reading.value),
        );

        await database
            .into(database.kanjiReadings)
            .insertOnConflictUpdate(entry);

        typePosition++;
        position.update(
          kanjiReadingTypeId,
          (value) => typePosition,
          ifAbsent: () => typePosition,
        );
      }
    }
  }
}

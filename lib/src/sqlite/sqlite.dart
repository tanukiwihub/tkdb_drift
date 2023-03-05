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
    await _upsertRadicals(tkdbJson.radicals);
  }

  Future<void> _upsertRadicals(List<TKDBRadical> radicals) async {
    for (final radical in radicals) {
      String? variantOf = radicals
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
    int i = 0;
    for (final meaning in radical.meaning) {
      final entry = RadicalMeaningsCompanion(
        radicalId: Value(radical.kvgHexcode),
        position: Value(i),
        value: Value(meaning),
      );

      await database
          .into(database.radicalMeanings)
          .insertOnConflictUpdate(entry);
      i++;
    }
  }

  Future<void> _upsertRadicalReadings(TKDBRadical radical) async {
    int i = 0;
    for (final reading in radical.reading) {
      final entry = RadicalReadingsCompanion(
        radicalId: Value(radical.kvgHexcode),
        position: Value(i),
        value: Value(reading),
      );

      await database
          .into(database.radicalReadings)
          .insertOnConflictUpdate(entry);
      i++;
    }
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;

import 'model/tkdb.model.dart';

Future<TKDB> getTKDBInJson() async {
  final Directory current = Directory.current;
  final filePath = p.join(current.path, 'assets/tkdb.json');
  final jsonData = await File(filePath).readAsString();
  final parsedJson = jsonDecode(jsonData);
  final tkdb = TKDB.fromJson(parsedJson);
  return tkdb;
}

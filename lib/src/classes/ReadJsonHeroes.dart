import 'dart:convert';

import 'package:flutter/services.dart';

class ReadJsonHeroes {
  Future<dynamic> loadJsonData() async {
    String jsonFile = await rootBundle.loadString('assets/data/heroes.json');
    List<dynamic> jsonParse = jsonDecode(jsonFile);
    return jsonParse;
  }
}

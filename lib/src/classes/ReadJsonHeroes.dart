import 'dart:convert';
import '../classes/Heroes.dart' show Heroes;

import 'package:flutter/services.dart';

class ReadJsonHeroes {
  Future<List<Heroes>> loadJsonData() async {
    String jsonFile = await rootBundle.loadString('assets/data/heroes.json');
    List<dynamic> jsonParse = jsonDecode(jsonFile);
    List<Heroes> herosList = [];

    jsonParse.map((hero) => {
          herosList.add(new Heroes(
              hero['name'],
              hero['realname'],
              hero['team'],
              hero['firstappearance'],
              hero['createdby'],
              hero['publisher'],
              hero['imageurl'],
              hero['bio']))
        });

    return herosList;
  }
}

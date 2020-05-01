import 'package:flutter/material.dart';
import '../classes/Heroes.dart' show Heroes;

class ImageItemClicable extends StatelessWidget {
  ImageItemClicable({this.hero});

  final Heroes hero;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(hero.name);
  }
}

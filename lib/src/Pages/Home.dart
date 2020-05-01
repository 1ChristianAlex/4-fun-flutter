import 'package:flutter/material.dart';
import '../classes/ReadJsonHeroes.dart';
import '../classes/Heroes.dart' show Heroes;
import '../widgets/listImageItem.dart' show ImageItemClicable;

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<Heroes> herosList = [];
  @override
  void initState() {
    super.initState();
    ReadJsonHeroes jsonHero = ReadJsonHeroes();

    WidgetsBinding.instance.addPersistentFrameCallback((callback) => {
          jsonHero.loadJsonData().then((valueJson) => {
                setState(() {
                  herosList = valueJson;
                })
              })
        });
  }

  List<ImageItemClicable> ImagemList() {
    List<ImageItemClicable> imagemItemList = [];

    if (herosList.length > 0) {
      herosList.forEach(
          (hero) => {imagemItemList.add(ImageItemClicable(hero: hero))});
    }
    return imagemItemList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SingleChildScrollView(
          child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              child: Row(children: <Widget>[
                Column(
                  children: ImagemList(),
                )
              ]))),
    );
  }
}

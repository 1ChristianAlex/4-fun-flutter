import 'package:flutter/material.dart';
import '../classes/ReadJsonHeroes.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final List<String> spiderManList = [''];
  Map<String, String> jsonHeroJson;

  @override
  void initState() {
    super.initState();
    ReadJsonHeroes jsonHero = ReadJsonHeroes();

    WidgetsBinding.instance.addPostFrameCallback((callback) => {
          jsonHero.loadJsonData().then((valueJson) => {
                setState(() {
                  jsonHeroJson = valueJson;
                })
              })
        });
  }

  List<Widget> spiderText() {
    List<Text> spiderText =
        this.spiderManList.map((item) => Text('item.getName()')).toList();

    return spiderText;
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
                  children: <Widget>[
                    Text(
                      jsonHeroJson.toString(),
                    )
                  ],
                )
              ]))),
    );
  }
}

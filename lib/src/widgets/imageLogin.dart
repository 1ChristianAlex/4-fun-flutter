import 'package:flutter/material.dart';

class ImageLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(100),
      child: Image(
        image: AssetImage('assets/login/spider-logo.png'),
        width: double.infinity,
      ),
    );
  }
}

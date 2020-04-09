import 'package:flutter/material.dart';

class FormLogin extends StatefulWidget {
  @override
  FormLoginState createState() => FormLoginState();
}

class FormLoginState extends State<FormLogin> {
  String name = '';
  String password = '';

  @override
  void initState() {
    super.initState();
    name = 'Nome';
    password = 'Pass';
  }

  final _formKey = GlobalKey<FormState>();

  void setName(value) {
    setState(() {
      name = value;
    });
  }

  void setPass(value) {
    setState(() {
      password = value;
    });
  }

  void submitLogin() {
    if (this.password == '123456' && this.name == 'khrix') {
      Navigator.pushNamed(context, '/HomeLoged');
    }
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(hintText: 'Email'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Empty Text';
                }
                return null;
              },
              onChanged: setName,
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Password'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Empty Text';
                }
                return null;
              },
              onChanged: setPass,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ButtonTheme(
                minWidth: double.infinity,
                child: RaisedButton(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  onPressed: this.submitLogin,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:partyapp/states/loginstates.dart';
import 'package:flutter/widgets.dart';

class login extends StatefulWidget {
  @override
  loginstates createState() => new loginstates();
}

class loginscreen extends StatelessWidget {
  const loginscreen({
    Key key,
    @required this.onSubmit,
  })
      : super(key: key);

  final VoidCallback onSubmit;

  static final TextEditingController _user = new TextEditingController();
  static final TextEditingController _password = new TextEditingController();

  String get username => _user.text;

  String get password => _password.text;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                controller: _user,
                decoration: new InputDecoration(hintText: "Enter user name"),
              ),
              new TextField(
                controller: _password,
                decoration: new InputDecoration(hintText: "Enter password"),
              ),
              new RaisedButton(child: new Text("Login"), onPressed: onSubmit)
            ],
          ),
        ),
      ),
    );
  }
}

class settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text("Settings"),
      ),
    );
  }
}

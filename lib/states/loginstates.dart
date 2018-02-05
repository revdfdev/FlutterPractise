import 'package:flutter/material.dart';
import 'package:partyapp/loginscreen.dart';


class loginstates extends State<login> {

  String _title = "Login";

  void _goHome() {
    print("Home clicked");
  }

  void _logOut() {
    print("Logout clicked");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.home), onPressed: () {
              _goHome();
            }),
            new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: () {
              _logOut();
            })
          ],
        ),
        body: new settings(),
      ),
    );
  }
}
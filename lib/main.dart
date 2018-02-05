import 'package:flutter/material.dart';
import 'package:partyapp/hello.dart';
import 'package:partyapp/homescreen.dart';
import 'package:partyapp/loginscreen.dart';

void main() => runApp(new login());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(

      title: "Webcubic Technologies",
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text("WebCubtechnologies Project"),
          centerTitle: true,
        ),
        body: new Container(
          padding: const EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Text("Hello"),
                new Text("World"),
                new Text("!!!"),
                new Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Hello(),
                    new Hello(),
                    new Hello(),
                    new Hello()
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

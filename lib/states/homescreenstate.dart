import 'package:flutter/material.dart';
import 'package:partyapp/homescreen.dart';



class homescreenstate extends State<homescreen> {
  String _title = 'Home screen';

  String _state = 'NO STATE';

  void _myState(String _message) {
    print(_message);
    setState(() => _state = _message);
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _title,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(Icons.print),
                onPressed: () {
                  _myState("Print pressed");
                }),
            new IconButton(
                icon: new Icon(Icons.add_alert),
                onPressed: () {
                  _myState("Alert pressed");
                }),
            new IconButton(
                icon: new Icon(Icons.delete),
                onPressed: () {
                  _myState("Delete pressed");
                })
          ],
        ),
        body: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new  Text(_state),
          )
        ),
      ),
    );
  }
}

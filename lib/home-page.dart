import 'package:flutter/material.dart';

void main() => runApp(HomeApp());

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomeBody(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Container(
      padding: EdgeInsets.only(left: 140, top: 50),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.face,
            color: Colors.black,
            size: 98.0,
            semanticLabel: "Profile",
          ),
          Text(
            "Home",
            style: TextStyle(color: Colors.black, fontSize: 36),
          ),
        ],
      ),
    );
  }
}

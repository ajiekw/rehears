import 'package:flutter/material.dart';

void main() => runApp(Profile());

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ProfileBody(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Container(
      padding: EdgeInsets.only(left: 110, top: 50),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.face,
            color: Colors.black,
            size: 98.0,
            semanticLabel: "Profile",
          ),
          Text(
            "John Doe",
            style: TextStyle(color: Colors.black, fontSize: 36),
          ),
        ],
      ),
    );
  }
}

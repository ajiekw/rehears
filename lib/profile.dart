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

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 220,
        width: double.maxFinite,
        child: Card(
          elevation: 5,
        ),
      ),
    );
  }
}

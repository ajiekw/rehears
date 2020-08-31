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
      child: Stack(
        children: <Widget>[
          ProfileCard(),
          ProfileText(),
          PhotoProfile(),
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
        margin: EdgeInsets.only(top: 220),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 440,
        width: double.maxFinite,
        child: Card(
          elevation: 5,
        ),
      ),
    );
  }
}

class ProfileText extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          'John Doe',
          style: TextStyle(
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}

class PhotoProfile extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Container(
      padding: EdgeInsets.only(top: 100),
      child: Align(
        alignment: Alignment.topCenter,
        child: Icon(
          Icons.face,
          color: Colors.amber,
          size: 90,
        ),
      ),
    );
  }
}

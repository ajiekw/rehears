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
      child: ProfileCard(),
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

class ProfileName extends StatefulWidget {
  @override
  Widget build(BuildContext) {
    return Text(
      'John Doe',
      style: TextStyle(
        fontSize: 12,
      ),
    );
  }
}

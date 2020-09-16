import 'package:flutter/material.dart';
import 'profile.dart';

void main() => runApp(SettingProfile());

class SettingProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Text(
            'Setting',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SettingBody(),
      ),
    );
  }
}

class SettingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            'This is setting',
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }
}

Route backToProfile() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Profile(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(-1, 0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

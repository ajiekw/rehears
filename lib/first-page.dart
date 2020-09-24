import 'package:flutter/material.dart';
import 'register-form.dart';
import 'login.dart';

void main() => runApp(LandingPage());

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Body(),
        backgroundColor: Colors.yellow[700],
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Text(
              "Welcome!",
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset(
              'assets/images/welcome-illu3.png',
              scale: 1,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: RaisedButton(
              elevation: 15.0,
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(29.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
              color: Colors.deepPurple[900],
              child: Text(
                "Create an account",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 100, left: 85),
                child: Text(
                  "Already Have an account?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 100, left: 5),
                child: GestureDetector(
                  child: Text(
                    "Log in",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.deepPurple[900]),
                  ),
                  onTap: () {
                    Navigator.of(context).push(toLogin());
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Register(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(position: animation.drive(tween), child: child);
      });
}

Route toLogin() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => Login(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(position: animation.drive(tween), child: child);
      });
}

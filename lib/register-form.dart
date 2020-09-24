import 'package:flutter/material.dart';
import 'first-page.dart';

//update
void main() => runApp(Register());

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RegisterBody(),
        backgroundColor: Colors.yellow[700],
      ),
    );
  }
}

class RegisterBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              "Register",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29.5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 9,
                      offset: Offset(-4, 6))
                ]),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Name",
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29.5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 9,
                      offset: Offset(-4, 6))
                ]),
            child: TextField(
              decoration: InputDecoration(
                hintText: "E-mails",
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29.5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 9,
                      offset: Offset(-4, 6))
                ]),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Username",
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29.5),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 1,
                      blurRadius: 9,
                      offset: Offset(-4, 6))
                ]),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Password",
                border: InputBorder.none,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(29.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    color: Colors.deepPurple[900],
                    onPressed: () {},
                    child: Text(
                      "Register",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: RaisedButton(
                    elevation: 10.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(29.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 35),
                    color: Colors.deepPurple[900],
                    onPressed: () {
                      Navigator.of(context).push(cancelRoute());
                    },
                    child: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Route cancelRoute() {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => LandingPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(-1, 0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(position: animation.drive(tween), child: child);
      });
}

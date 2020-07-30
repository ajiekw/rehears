// Flutter code sample for Form

// This example shows a [Form] with one [TextFormField] to enter an email
// address and a [RaisedButton] to submit the form. A [GlobalKey] is used here
// to identify the [Form] and validate input.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/widgets/form.png)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
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
    Size size = MediaQuery.of(context).size;
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
              'assets/images/welcome-illu2.png',
              scale: 1,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(29),
              child: RaisedButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                onPressed: () {},
                color: Colors.deepPurple[900],
                child: Text(
                  "Create an account",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 100, left: 10),
                child: Text(
                  "Already Have an account?",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 100, left: 5),
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.deepPurple[900]),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

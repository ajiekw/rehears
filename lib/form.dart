// Flutter code sample for Form

// This example shows a [Form] with one [TextFormField] to enter an email
// address and a [RaisedButton] to submit the form. A [GlobalKey] is used here
// to identify the [Form] and validate input.
//
// ![](https://flutter.github.io/assets-for-api-docs/assets/widgets/form.png)

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const backgroundcolor = Color(0xFFDD835);

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Login';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
          backgroundColor: Colors.yellow[700],
        ),
        body: Body(),
        backgroundColor: Colors.yellow[700],
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(29.5)),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Username",
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(29.5)),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Password",
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(29),
            child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                color: Colors.deepPurple[900],
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                )),
          ),
        )
      ],
    );
  }
}

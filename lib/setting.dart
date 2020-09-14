import 'package:flutter/material.dart';

void main() => runApp(SettingProfile());

class SettingProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Setting',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

class SettingBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        backgroundColor: Colors.white,
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'profile.dart';
import 'home-page.dart';

void main() => runApp(Navigation());

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: BottNavigation(),
      ),
    );
  }
}

class BottNavigation extends StatefulWidget {
  BottNavigation({Key key}) : super(key: key);

  @override
  _BottNavigationState createState() => _BottNavigationState();
}

class _BottNavigationState extends State<BottNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomeApp(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _children.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            title: Text('Profile'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow[700],
        onTap: _onItemTapped,
      ),
    );
  }
}

import 'package:flutter/material.dart';

//update

void main() => runApp(HomeApp());

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NavDrawer(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
      height: 220,
      width: double.maxFinite,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(7),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              DailyText(),
                              SizedBox(
                                height: 10,
                              ),
                              rehearsDay(),
                              Spacer(),
                              SizedBox(
                                width: 20,
                              ),
                              changeIcon(),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              UserExp(),
                              SizedBox(
                                height: 20,
                              ),
                              ExpNumber(),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              FootNote(),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget changeIcon() {
    return Container(
      child: Align(
        alignment: Alignment.topRight,
        child: Icon(
          Icons.check_box,
          color: Colors.green,
          size: 30,
        ),
      ),
    );
  }

  Widget rehearsDay() {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '(Day 1)',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  Widget DailyText() {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Daily Exercise",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 20,
          ),
        ),
      ),
    );
  }

  Widget UserExp() {
    return Container(
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          "Exp: ",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 30,
          ),
        ),
      ),
    );
  }

  Widget ExpNumber() {
    return Container(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "50",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 30,
          ),
        ),
      ),
    );
  }

  Widget FootNote() {
    return Container(
      padding: EdgeInsets.only(top: 60),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          "a short description of what you did today",
          style: TextStyle(
              color: Colors.deepPurple,
              fontSize: 12,
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rehears'),
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Rehears',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow[700],
              ),
            ),
            ListTile(
              leading: Icon(Icons.face),
              title: Text('Account'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.power_settings_new),
              title: Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: Container(
        child: HomeBody(),
      ),
    );
  }
}

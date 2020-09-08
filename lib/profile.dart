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
          child: Padding(
            padding: EdgeInsets.all(7),
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          ProfileContent(),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
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

class ProfileContent extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Row(
            children: <Widget>[
              Container(
                child: Icon(
                  Icons.android,
                  size: 30,
                  color: Colors.green,
                ),
              ),
              Container(
                child: Text(
                  " An Android Prodigy",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: Container(
                  child: Text(
                    " 200 Exp",
                    style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 50, 10),
          child: Row(
            children: <Widget>[
              Container(
                child: Icon(
                  Icons.access_alarms,
                  size: 30,
                  color: Colors.red,
                ),
              ),
              Container(
                child: Text(
                  " A Fast Learner",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                child: Container(
                  child: Text(
                    " 150 Exp",
                    style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
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

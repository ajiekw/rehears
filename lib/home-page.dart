import 'package:flutter/material.dart';
import 'rehears-data.dart';

void main() => runApp(HomeApp());

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomeBody(),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      height: 220,
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
                        Padding(
                          padding: const EdgeInsets.only(left: 1.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  changeIcon(),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
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

  Widget rehearsDay(data) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: 'Day One',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget DailyText() {}

  Widget changeIcon() {
    return Align(
      alignment: Alignment.topRight,
      child: Icon(
        Icons.check_box,
        color: Colors.orange,
        size: 30,
      ),
    );
  }
}

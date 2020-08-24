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
                          )
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
    return Align(
      alignment: Alignment.topRight,
      child: Icon(
        Icons.check_box,
        color: Colors.green,
        size: 30,
      ),
    );
  }

  Widget rehearsDay() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        '(Day 1)',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        ),
      ),
    );
  }

  Widget DailyText() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        "Daily Exercise",
        style: TextStyle(
          color: Colors.amber,
          fontSize: 20,
        ),
      ),
    );
  }

  // Widget UserExp(){
  //   return
  // }
}

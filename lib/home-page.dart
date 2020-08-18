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
  // var Data = RehearsData.getData;

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
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Daily Excercise",
                              style: TextStyle(
                                color: Colors.blue[300],
                                fontSize: 15,
                              ),
                            ),
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
}

Widget rehearsDay(data) {
  return Align(
    alignment: Alignment.centerLeft,
    child: RichText(
      text: TextSpan(
        text: '${data['name']}',
        style: TextStyle(
          color: Colors.amber,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}

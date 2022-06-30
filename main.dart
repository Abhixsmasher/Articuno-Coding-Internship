import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  Color Color_1 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  Color Color_2 = Colors.primaries[Random().nextInt(Colors.primaries.length)];
  void _switchColors() {
    setState(() {
      Color temp;
      temp = Color_1;
      Color_1 = Color_2;
      Color_2 = temp;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [
              Container(
                color: Color_1,
                height: 150,
                width: 150,
                margin: EdgeInsets.only(bottom: 10),
              ),
              Container(
                height: 150,
                width: 150,
                color: Color_2,
                margin: EdgeInsets.only(bottom: 10),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              child: Icon(Icons.swap_calls),
              onPressed: () => _switchColors(),
            ),
          )
        ],
      )),
    );
  }
}

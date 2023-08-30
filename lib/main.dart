import 'package:flutter/material.dart';

void main() => runApp(FlutterTutorialApp());

class FlutterTutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter tutorial",
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Text Center",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.brown[300],
          ),
          body: Image(
            image: AssetImage("assets/images/img1.png"),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.deepOrange,
            child: Text("ADd"),
          )),
    );
  }
}
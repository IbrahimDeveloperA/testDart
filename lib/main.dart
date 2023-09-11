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
            backgroundColor: Colors.blue,
          ),
          body: Container(
            color: Colors.blue,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(50),
            transform: Matrix4.rotationZ(-0.1),
            child: Text(
              "ololol",
              style: TextStyle(fontSize: 120.0, color: Colors.black),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            child: Text("ADd"),
          )),
    );
  }
}

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
          body: Column(
            //Виджет Column   это LinerLayout
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // можно манипулировать гравити внутри контейнера
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(20),
                child: Text("Text"),
              ),
              Container(
                color: Colors.blue,
                padding: EdgeInsets.all(30),
                child: Text("Text"),
              ),
              Container(
                color: Colors.green,
                padding: EdgeInsets.all(40),
                child: Text("Text"),
              )
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.blue,
            child: Text("ADd"),
          )),
    );
  }
}

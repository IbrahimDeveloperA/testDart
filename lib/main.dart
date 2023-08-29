import 'package:flutter/material.dart';

void main() {
  int counter = 1;
  String text = "";
  runApp(
    MaterialApp(
      title: "Flutter tutorial",
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "Text Center",
              style: TextStyle(fontSize: 20.0,color: Colors.black,),
            ),
            centerTitle: true,
            backgroundColor: Colors.brown[300],
          ),
          body: Text(
            "Hello Word",
            style: TextStyle(
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              letterSpacing: 7.0,
              color: Colors.blue[400],
            ),


          ),
          backgroundColor: Colors.amber[400],
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.deepOrange,
            child: Text("ADd"),
          )),
    ),
  );
}

class FlutterTutorialApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw Container();
  }

}
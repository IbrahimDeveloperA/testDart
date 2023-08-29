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
          body: RichText(
            text: TextSpan(
                style: TextStyle(
                  fontSize: 30.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue[400],
                ),
                children: <TextSpan>[
                  TextSpan(text: "Hello"),
                  TextSpan(
                      text: "MIe,",
                      style: TextStyle(color: Colors.deepOrange),
                      children: <TextSpan>[
                        TextSpan(
                            text: "New text",
                            style:
                                TextStyle(decoration: TextDecoration.underline,color: Colors.brown))
                      ]),
                  TextSpan(text: "Wors,")
                ]),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.deepOrange,
            child: Text("ADd"),
          )),
    );
  }
}

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
            child: Container(
              margin: EdgeInsets.all(100),
              padding: EdgeInsets.all(100),
              child: Text(
                "",
                style: TextStyle(fontSize: 26.0, color: Colors.black),
              ),
              decoration: BoxDecoration(
                  color: Colors.green,
                  //    borderRadius: BorderRadius.all(Radius.circular(200))
                  //  borderRadius: BorderRadius.circular(20)
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 15,
                    color: Colors.pink,
                  ),
              boxShadow: [
                BoxShadow(
                  color: Colors.red,
                  spreadRadius: 10, // количестыо тени
                  blurRadius: 10, // контролирует четкость тени
                  offset: Offset(3,3) //контроль тени
                )
              ],

              ),
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              // gradient: RadialGradient(
              //     colors:[
              //       Colors.red,
              //       Colors.black
              //     ]
              // ),
              image: DecorationImage(
                image: AssetImage("assets/images/img1.png"),
                fit: BoxFit.cover  //что типо scylyTypy
              )
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

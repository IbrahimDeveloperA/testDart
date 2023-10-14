import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/router/route.dart';
import 'package:untitled/theme/theme.dart';

class CryptoCurrenciesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter tutorial",
      theme: grayTheme,
      routes: router,
    );
  }
}
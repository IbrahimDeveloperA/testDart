import 'package:flutter/material.dart';

final grayTheme = ThemeData(
  primarySwatch: Colors.yellow,
  dividerColor: Colors.white,
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w700,
      )),
  scaffoldBackgroundColor: Colors.white10,
  listTileTheme: const ListTileThemeData(iconColor: Colors.white),
  textTheme: const TextTheme(
      bodyMedium: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22),
      labelSmall: TextStyle(
          color: Colors.white54, fontWeight: FontWeight.w700, fontSize: 14)),
);
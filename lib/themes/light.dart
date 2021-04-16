import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  appBarTheme: AppBarTheme(
    centerTitle: false,
    color: Colors.white.withOpacity(0.9),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.redAccent,
        fontSize: 20.0,
      ),
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),

  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    elevation: 0.0,
    selectedIconTheme: IconThemeData(
      color: Colors.red,
    ),
    unselectedIconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),

  textTheme: TextTheme(
    headline1: TextStyle(
      color: Colors.black,
      fontSize: 24.0,
      fontWeight: FontWeight.w600
    ),
    headline4: TextStyle(
      color: Colors.grey,
      fontSize: 14.0,
    ),
    headline5: TextStyle(
      color: Colors.black,
      fontSize: 14.0,
    ),
    headline6: TextStyle(
      color: Colors.redAccent,
      fontSize: 14.0,
    ),
  ),
);

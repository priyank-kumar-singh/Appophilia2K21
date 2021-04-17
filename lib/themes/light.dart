import 'package:code_bites/themes/constants.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData.light().copyWith(
  appBarTheme: AppBarTheme(
    centerTitle: false,
    color: Colors.white.withOpacity(0.9),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.redAccent,
        fontSize: headline1FontSizeAppBar,
      ),
    ),
    actionsIconTheme: IconThemeData(
      color: Colors.black,
    ),
    iconTheme: IconThemeData(
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
    showSelectedLabels: false,
    showUnselectedLabels: false,
  ),

  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(textFieldBorderRadius)),
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1.0,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(textFieldBorderRadius)),
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1.0,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(textFieldBorderRadius)),
      borderSide: BorderSide(
        color: Colors.grey,
        width: 2.0,
      ),
    ),
    hintStyle: TextStyle(
      color: Colors.grey,
    ),
  ),

  textTheme: TextTheme(
    headline1: TextStyle(
      color: Colors.black,
      fontSize: headline1FontSize,
      fontWeight: FontWeight.w600
    ),
    headline2: TextStyle(
      color: Colors.black,
      fontSize: headline2FontSize,
      fontWeight: FontWeight.w600
    ),
    headline3: TextStyle(
      color: Colors.black,
      fontSize: headline3FontSize,
      fontWeight: FontWeight.w600,
    ),
    headline4: TextStyle(
      color: Colors.grey,
      fontSize: headline4FontSize,
    ),
    headline5: TextStyle(
      color: Colors.black,
      fontSize: headline5FontSize,
    ),
    headline6: TextStyle(
      color: Colors.redAccent,
      fontSize: headline6FontSize,
    ),
  ),
);

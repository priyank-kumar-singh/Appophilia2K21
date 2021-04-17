import 'package:code_bites/config.dart';
import 'package:code_bites/models/app.dart';
import 'package:code_bites/themes/dark.dart';
import 'package:code_bites/themes/light.dart';
import 'package:code_bites/views/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentAppTheme.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    currentAppTheme.removeListener(() {});
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppDetails.name,
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: currentAppTheme.themeMode,
      home: HomeScreen(),
    );
  }
}

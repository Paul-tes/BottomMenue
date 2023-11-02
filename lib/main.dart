import 'package:flutter/material.dart';
import 'package:todo/pages/first_page.dart';
import 'package:todo/pages/home_page.dart';
import 'package:todo/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void tapMe() {
    print("Auuuche!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FristPage(),
      routes: {
        'firstPage': (context) => FristPage(),
        'homepage': (context) => Home(),
        'settingspage': (context) => Settings(),
      },
    );
  }
}
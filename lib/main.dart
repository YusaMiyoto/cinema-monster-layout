import 'package:flutter/material.dart';
import 'ProfileScreen.dart';
import 'searchScreen.dart';
import 'aboutDevelopersScreen.dart';
import 'detailedViewScreen.dart';
import 'homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cinema monster',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Scada',
        /*  elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(125, 0, 0, 1),
                  onPrimary: Colors.white,
                  textStyle: TextStyle(fontSize: 16))),*/
      ),
      home: HomeScreen(),
    );
  }
}


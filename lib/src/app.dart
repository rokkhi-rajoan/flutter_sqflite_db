import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sqflite_db/screens/categoriesScreen.dart';
import 'package:flutter_sqflite_db/screens/homeScreen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '/home':(context)=>HomeScreen(),
        '/category':(context)=>Categories(),
      },
    );
  }
}

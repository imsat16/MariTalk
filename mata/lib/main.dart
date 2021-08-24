import 'package:flutter/material.dart';
import 'package:mata/BottomNavbar/BottomNavbar.dart';
import 'package:mata/export.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mari Talk',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FloatBottNav(),
    );
  }
}

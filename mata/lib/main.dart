
import 'package:flutter/material.dart';
import 'package:mata/ItemExport.dart';

Future main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Theme.of(context).accentColor,
      title: 'Mari Talk',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        accentColor: Colors.transparent,
        primaryColor: Colors.black,
        secondaryHeaderColor: Colors.grey[600],
      ),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          accentColor: Colors.transparent,
          primaryColor: Colors.white,
          secondaryHeaderColor: Color.fromRGBO(209, 211, 212, 0.8)),
      home: FloatBottNav(),
    );
  }
}

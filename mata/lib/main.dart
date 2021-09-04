import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mata/Auth/Authenticate.dart';
// import 'package:mata/Auth/LoginScreen.dart';
// import 'package:mata/BottomNavbar/BottomNavbar.dart';
// import 'package:mata/export.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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

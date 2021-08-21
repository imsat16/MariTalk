import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mata/Auth/LoginScreen.dart';
import 'package:mata/BottomNavbar/BottomNavbar.dart';

class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return FloatBottNav();
    } else {
      return Login();
    }
  }
}

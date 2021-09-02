import 'package:flutter/material.dart';
import 'package:mata/export.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        20,
        (index) => ChatItem(),
      ),
    );
  }
}

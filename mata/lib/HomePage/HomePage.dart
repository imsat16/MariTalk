import 'package:flutter/material.dart';
import 'package:mata/HomePage/ChatPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ChatPage(),
        ],
    );
  }
}

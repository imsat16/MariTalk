import 'package:flutter/material.dart';

class TelpPage extends StatefulWidget {
  const TelpPage({Key? key}) : super(key: key);

  @override
  _TelpPageState createState() => _TelpPageState();
}

class _TelpPageState extends State<TelpPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Call"),
      ),
    );
  }
}

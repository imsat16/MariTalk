import 'package:flutter/material.dart';
import 'package:mata/ItemExport.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: List.generate(
          50,
          (index) => ChatItem(),
        ),
      ),
    );
  }
}
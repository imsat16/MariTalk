import 'package:flutter/material.dart';
import 'package:mata/export.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        20,
        (index) => ContactItem(),
      ),
    );
  }
}

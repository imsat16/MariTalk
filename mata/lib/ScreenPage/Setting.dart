import 'package:flutter/material.dart';
import 'package:mata/Methods/Methods.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          margin: EdgeInsets.all(100),
          child: Column(
            children: [
              Text("SettingPage"),
              RaisedButton(
                onPressed: () => logOut(context),
                child: Text("Logout"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

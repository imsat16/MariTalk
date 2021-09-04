import 'package:flutter/material.dart';
import 'package:mata/ItemExport.dart';

class FloatBottNav extends StatefulWidget {
  const FloatBottNav({Key? key}) : super(key: key);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    CallsPage(),
    PostPage(),
    ProfilePage()
  ];

  @override
  _FloatBottNavState createState() => _FloatBottNavState();
}

class _FloatBottNavState extends State<FloatBottNav> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      FloatBottNav._widgetOptions.elementAt(_currentIndex),
      Padding(
        padding: const EdgeInsets.all(50),
        child: Align(
          alignment: Alignment(0.0, 1.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BottomNavigationBar(
              selectedItemColor: Colors.amber[800],
              // backgroundColor: Colors.blueGrey,
              showSelectedLabels: false,
              currentIndex: _currentIndex,
              onTap: _onItemTapped,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: 'Home',
                  backgroundColor: Colors.blueGrey,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.call),
                  label: 'School',
                  backgroundColor: Colors.blueGrey,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.grid_view,
                  ),
                  label: 'Business',
                  backgroundColor: Colors.blueGrey,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle,
                  ),
                  label: 'Settings',
                  backgroundColor: Colors.blueGrey,
                ),
              ],
            ),
          ),
        ),
      )
    ]));
  }
}

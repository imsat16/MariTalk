import 'package:flutter/material.dart';
import 'package:mata/export.dart';

class FloatBottNav extends StatefulWidget {
  const FloatBottNav({Key? key}) : super(key: key);

  @override
  State<FloatBottNav> createState() => _FloatBottNavState();
}

class _FloatBottNavState extends State<FloatBottNav> {
  int _currentIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    TelpPage(),
    Contact(),
    ProfilePage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: Text("Bottom Nav Bar")),
        body: Stack(children: [
      _widgetOptions.elementAt(_currentIndex),
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
                  icon: Icon(Icons.contacts),
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
    ])
        // _widgetOptions.elementAt(_currentIndex),
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.only(left: 50, right: 50, bottom: 25),
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(30),
        //     child: BottomNavigationBar(
        //       selectedItemColor: Colors.amber[800],
        //       // backgroundColor: Colors.blueGrey,
        //       showSelectedLabels: false,
        //       currentIndex: _currentIndex,
        //       onTap: _onItemTapped,
        //       items: const <BottomNavigationBarItem>[
        //         BottomNavigationBarItem(
        //           icon: Icon(Icons.home_filled),
        //           label: 'Home',
        //           backgroundColor: Colors.blueGrey,
        //         ),
        //         BottomNavigationBarItem(
        //           icon: Icon(Icons.call),
        //           label: 'School',
        //           backgroundColor: Colors.blueGrey,
        //         ),
        //         BottomNavigationBarItem(
        //           icon: Icon(Icons.contacts),
        //           label: 'Business',
        //           backgroundColor: Colors.blueGrey,
        //         ),
        //         // BottomNavigationBarItem(
        //         //   icon: Icon(Icons.search),
        //         //   label: 'Settings',
        //         //   backgroundColor: Colors.blueGrey,
        //         // ),
        //         BottomNavigationBarItem(
        //           icon: Icon(Icons.settings),
        //           // icon: ImageIcon(
        //           //   AssetImage("images/s.jpg"),
        //           //   // color: Color(0xFF3A5A98),
        //           //   size: 40,
        //           // ),
        //           label: 'Settings',
        //           backgroundColor: Colors.blueGrey,
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}

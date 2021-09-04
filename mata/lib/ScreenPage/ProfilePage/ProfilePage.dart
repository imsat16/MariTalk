import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          'John Doe',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: new Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          // Bagian Profile
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Profile
                Column(
                  children: [
                    Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.redAccent,
                          image: DecorationImage(
                              image: AssetImage('assets/images/azizi.jpeg'))),
                      // child: Image.asset('assets/images/azizi.jpeg')
                    ),
                  ],
                ),
                // Post
                Container(
                    width: 60.0,
                    height: 60.0,
                    child: Center(
                        child: Column(
                      children: [
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Post',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ))),
                // Followers
                Container(
                    width: 60.0,
                    height: 60.0,
                    child: Center(
                        child: Column(
                      children: [
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ))),
                // Followings
                Container(
                    width: 60.0,
                    height: 60.0,
                    child: Center(
                        child: Column(
                      children: [
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ))),
              ],
            ),
          ),
          // Bagian Nama Bio Dll
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Container(
                child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Azizi Asadel',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
                    ),
                    Text(
                      'Idol Ibukota',
                      style: TextStyle(fontSize: 15, color: Colors.black54),
                    ),
                    Text(
                      'Ini Bio yang cukup panjang gausah pake lorem ipsum dolor',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            )),
          ),
          //  Bagian Edit Gitu Dll
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Edit Profile
                OutlinedButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text("Edit Profile"),
                ),
                OutlinedButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text("Promote"),
                ),
                OutlinedButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text("Insight"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

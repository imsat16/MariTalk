import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, dynamic>? userMap;
  bool isloading = false;
  final TextEditingController _search = TextEditingController();

  void onSearch() async {
    FirebaseFirestore _firestore = FirebaseFirestore.instance;

    setState(() {
      isloading = true;
    });

    await _firestore
        .collection('users')
        .where("nickname", isEqualTo: _search.text)
        .get()
        .then((value) {
      setState(() {
        userMap = value.docs[0].data();
        isloading = false;
      });
      print(userMap);
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: isloading
          ? Center(
              child: Container(
                height: size.height / 20,
                width: size.width / 20,
                child: CircularProgressIndicator(),
              ),
            )
          : Column(children: [
              SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    height: size.height / 14,
                    width: size.width / 1.21,
                    margin: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    child: TextField(
                      controller: _search,
                      decoration: InputDecoration(
                          hintText: "Search",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  IconButton(onPressed: onSearch, icon: Icon(Icons.search))
                ],
              ),
              userMap != null
                  ? ListTile(
                      onTap: () {},
                      leading: Icon(
                        Icons.person_rounded,
                        color: Colors.black,
                        size: 40,
                      ),
                      title: Text(userMap!['name']),
                      subtitle: Text(userMap!['nickname']),
                      trailing: Icon(
                        Icons.chat_sharp,
                        color: Colors.black,
                      ),
                    )
                  : Container()
            ]),
    );
  }
}

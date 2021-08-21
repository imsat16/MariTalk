import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mata/Methods/friendService.dart';
import 'package:toast/toast.dart';

class FriendSearch extends StatefulWidget {
  const FriendSearch({Key? key}) : super(key: key);

  @override
  _FriendSearchState createState() => _FriendSearchState();
}

const String USER_IMAGE_PLACE_HOLDER =
    'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png';

class _FriendSearchState extends State<FriendSearch> {
  Map<String, dynamic>? userMap;
  bool isloading = false;
  final TextEditingController _search = TextEditingController();
  String id = "null";
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

  void showDialog(
      String friendId, String friendDisplayName, String friendPhotoUri) async {
    showDialog(friendId, friendDisplayName, friendPhotoUri) {
      return AlertDialog(
        title: Text(friendDisplayName),
        content: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(friendPhotoUri != null
              ? friendPhotoUri
              : USER_IMAGE_PLACE_HOLDER),
          radius: 10,
        ),
        actions: <Widget>[
          FlatButton(
            child: Text('add'),
            onPressed: () {
              Navigator.pop(context);
              Toast.show('you have added $friendDisplayName', context,
                  duration: Toast.LENGTH_SHORT);
              addFriend(friendId, id);
            },
          ),
          FlatButton(
            child: Text('cancel'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      );
    }

    ;
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
                      leading: Image.network(
                        // userMap!['foto'] != null
                        //     ? userMap!['foto']
                        //     : USER_IMAGE_PLACE_HOLDER,
                        userMap!['foto'] != 'null'
                            ? userMap!['foto'].toString()
                            : USER_IMAGE_PLACE_HOLDER,
                      ),
                      // Icons.person_rounded,
                      // color: Colors.black,
                      // size: 40,

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

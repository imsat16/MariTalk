import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

Future<DocumentSnapshot> getFriendById(String id) async {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  var documents = await _firestore
      .collection("users")
      .where('uid', isEqualTo: id)
      .limit(1)
      .get();
  return documents.docs[0];
}

addFriend(String friendId, String id) async {
  var time = DateTime.now().millisecondsSinceEpoch.toString();

  bool isNewFriend = false;

  await _firestore
      .collection('users')
      .doc(id)
      .collection('friends')
      .where('friend_id', isEqualTo: friendId)
      .get()
      .then((value) {
    if (value.docs.isEmpty) {
      isNewFriend = true;
    }
  });

  if (isNewFriend) {
    await _firestore
        .collection('users')
        .doc(id)
        .collection('friends')
        .doc(friendId)
        .set({'friend_id': friendId, 'time_added': time, 'latest_message': ''});
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';

class SearchService {
  searchByName(String searchField) {
    return FirebaseFirestore.instance
        .collection('users')
        .where('searchKey', isEqualTo: searchField.substring(0, 1))
        .snapshots(); // we are returning the snapshot of those documents that have searchKey as the first letter of the input string
  }
}

// Example:

// If we have 4 names: 
// Abcd,
// Acdb,
// Bcdb,
// Bdcb, 
// and if we have typed A, the list we will return by the above class is [Abcd, Acdb];
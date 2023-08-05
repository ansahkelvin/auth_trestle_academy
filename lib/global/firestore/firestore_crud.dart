import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreCrud {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  //CREATE //ADD
  Future<void> addData() async {
    await _firestore
        .collection("books")
        .add({"title": "Hello world", "author": "Kelvin"});
  }

  //READ //RECEIVE
  Future<List> readData() async {
    final datasnapshot = await _firestore.collection("users").get();
    return datasnapshot.docs.map((data) {
      // print(data.data()["email"]);
      // data.data();
    }).toList();
  }

  //UPDATE //EDIT

  //DELETE //DELETE
}

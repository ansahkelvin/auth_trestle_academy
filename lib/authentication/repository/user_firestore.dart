import 'package:cloud_firestore/cloud_firestore.dart';

class AuthFirestore {
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<void> saveData(
    String uid,
    String email,
    String name,
  ) async {
    try {
      await _firebaseFirestore.collection("users").doc(uid).set({
        "email": email,
        "name": name,
      });
    } catch (e) {
      rethrow;
    }
  }
}

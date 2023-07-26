import 'package:flutter/material.dart';
import 'package:flutter_firebase/authentication/repository/auth_repository.dart';
import 'package:flutter_firebase/authentication/repository/user_firestore.dart';

class AuthProvider extends ChangeNotifier {
  AuthRepository repository = AuthRepository();
  AuthFirestore dataRepo = AuthFirestore();

  Future<void> loginUser(String email, String password) async {
    try {
      await repository.login(email, password);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> register(String name, String email, String password) async {
    try {
      final user = await repository.register(name, email, password);
      await dataRepo.saveData(user.user!.uid, email, name);
    } catch (e) {
      rethrow;
    }
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_firebase/authentication/repository/auth_repository.dart';

class AuthProvider extends ChangeNotifier {
  AuthRepository repository = AuthRepository();

  Future<void> loginUser(String email, String password) async {
    try {
      await repository.login(email, password);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> register(String name, String email, String password) async {
    try {
      await repository.register(name, email, password);
    } catch (e) {
      rethrow;
    }
  }
}

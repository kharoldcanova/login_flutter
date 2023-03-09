import 'package:login_flutter/repository/login_repository.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;

class AuthFirebase implements AuthRepository {
  final _firebaseAuth = auth.FirebaseAuth.instance;

  @override
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}

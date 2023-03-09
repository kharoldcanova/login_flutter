import 'package:flutter/foundation.dart';
import 'package:login_flutter/repository/login_repository.dart';

class AuthProvider extends ChangeNotifier {
  final AuthRepository authRepository;

  ///constructor
  AuthProvider({required this.authRepository});

  load() async {}

  ///login user
  Future<void> signIn({required String email, required String password}) async {
    await authRepository.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<void> signOut() async {
    await authRepository.signOut();
  }
}

abstract class AuthRepository {
  // Future<User> getUser();
  Future<void> signInWithEmailAndPassword(
      {required String email, required String password});
  Future<void> signOut();
}

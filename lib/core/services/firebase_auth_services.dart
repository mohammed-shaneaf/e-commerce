import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/custom_throw_exceptions_firebase.dart';

class FirebaseAuthServices {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<User?> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw CustomAuthException.fromFirebaseAuthException(e.code);
    }
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/custom_auth_exceptions_firebase.dart';
import 'package:google_sign_in/google_sign_in.dart';

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

  Future<User?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } on FirebaseAuthException catch (e) {
      throw CustomAuthException.fromFirebaseAuthException(e.code);
    }
  }

  Future<User?> signInWithGoogle() async {
    try {
      // بدء المصادقة مع Google
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        throw CustomAuthException("تم إلغاء تسجيل الدخول من قبل المستخدم.");
      }

      // الحصول على رموز المصادقة
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      // إنشاء بيانات الاعتماد
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // تسجيل الدخول إلى Firebase
      return (await FirebaseAuth.instance.signInWithCredential(credential)).user;
    } on FirebaseAuthException catch (e) {
      throw CustomAuthException.fromFirebaseAuthException(e.code);
    } on CustomAuthException catch (e) {
      print("خطأ مخصص: ${e.message}");
      return null;
    } catch (e) {
      print("حدث خطأ غير متوقع: ${e.toString()}");
      throw CustomAuthException("حدث خطأ غير متوقع، يرجى المحاولة لاحقًا.");
    }
  }
}

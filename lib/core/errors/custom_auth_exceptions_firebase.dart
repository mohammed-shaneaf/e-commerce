import 'dart:developer';

class CustomAuthException implements Exception {
  final String message;

  CustomAuthException(this.message);

  @override
  String toString() => message;

  static CustomAuthException fromFirebaseAuthException(String errorCode) {
    log('FirebaseAuthException: $errorCode'); // ✅ تسجيل الخطأ الوارد من Firebase

    switch (errorCode) {
      case 'email-already-in-use':
        return CustomAuthException("البريد الإلكتروني مستخدم بالفعل.");
      case 'invalid-email':
        return CustomAuthException("تنسيق البريد الإلكتروني غير صالح.");
      case 'weak-password':
        return CustomAuthException("كلمة المرور ضعيفة جدًا.");
      case 'operation-not-allowed':
        return CustomAuthException("تسجيل الدخول بالبريد الإلكتروني/كلمة المرور معطل.");
      case 'user-disabled':
        return CustomAuthException("تم تعطيل هذا الحساب.");
      case 'network-request-failed':
        return CustomAuthException("تأكد من اتصالك بالإنترنت وحاول مرة أخرى.");
      default:
        return CustomAuthException("حدث خطأ غير معروف.");
    }
  }
}

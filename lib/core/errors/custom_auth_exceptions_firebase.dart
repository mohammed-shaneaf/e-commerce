class CustomAuthException implements Exception {
  final String message;

  CustomAuthException(this.message);

  @override
  String toString() => message;

  static CustomAuthException fromFirebaseAuthException(String errorCode) {
    switch (errorCode) {
      case 'email-already-in-use':
        return CustomAuthException("The email is already in use.");
      case 'invalid-email':
        return CustomAuthException("Invalid email format.");
      case 'weak-password':
        return CustomAuthException("Password is too weak.");
      case 'operation-not-allowed':
        return CustomAuthException("Email/password sign-up is disabled.");
      case 'user-disabled':
        return CustomAuthException("This user has been disabled.");
      default:
        return CustomAuthException("An unknown error occurred.");
    }
  }
}

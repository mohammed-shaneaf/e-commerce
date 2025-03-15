import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/custom_auth_exceptions_firebase.dart';
import 'package:fruits_hub/core/errors/faliure.dart';
import 'package:fruits_hub/core/services/data_base_service.dart';
import 'package:fruits_hub/core/services/firebase_auth_services.dart';
import 'package:fruits_hub/core/utils/backend_endpoints.dart';
import 'package:fruits_hub/features/Auth/data/models/user_model.dart';
import 'package:fruits_hub/features/Auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/Auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthServices firebaseAuthServices;
  final DatabaseService databaseService;

  AuthRepoImpl({required this.firebaseAuthServices, required this.databaseService});

  @override

  // Current Behavior
  //*In your createUserWithEmailAndPassword method, Firebase Authentication creates the user first (firebaseAuthServices.createUserWithEmailAndPassword).
  //* Then, it saves the user data to Firestore (addUserData).
  //* If the Firestore operation fails (e.g., due to network issues or permissions), the Firebase Authentication user still exists, but the Firestore document does not.
  //* When the user tries to register again with the same email, Firebase Authentication rejects it because the email is already in use.
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(String email, String password, String name) async {
    try {
      // Step 1: Create user in Firebase Authentication
      var firebaseUser = await firebaseAuthServices.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Step 2: Create UserEntity directly with provided data
      var userEntity = UserEntity(
        uId: firebaseUser!.uid, // From Firebase Auth
        email: email, // From method parameter
        name: name, // From method parameter
        // Add other fields like address if needed
      );

      // Step 3: Attempt to save user data to Firestore
      try {
        await addUserData(user: userEntity);
      } catch (e) {
        // Step 4: If Firestore save fails, delete the Firebase Authentication user
        log('Failed to save user data to Firestore: ${e.toString()}');
        await firebaseAuthServices.deleteUser();
        return left(ServerFailure("فشل في حفظ بيانات المستخدم، تم إلغاء إنشاء الحساب"));
      }

      // Step 5: If everything succeeds, return the user entity
      return right(userEntity);
    } on CustomAuthException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      await Future.delayed(Duration(seconds: 1));
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return left(ServerFailure("لقد حدث خطأ ما، الرجاء المحاولة مرة أخرى"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(String email, String password) async {
    try {

      // i need to fetch the data from user
      var user = await firebaseAuthServices.signInWithEmailAndPassword(email: email, password: password);

      if (user == null) {
        return left(ServerFailure("المستخدم غير موجود أو كلمة المرور غير صحيحة"));
      }

      return right(UserModel.fromFirebaseUser(user));
    } on CustomAuthException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure("حدث خطأ غير متوقع، يرجى المحاولة لاحقًا"));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthServices.signInWithGoogle();
      return right(UserModel.fromFirebaseUser(user!));
    } on CustomAuthException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithGoogle: ${e.toString()}');
      return left(ServerFailure("حدث خطأ غير متوقع، يرجى المحاولة لاحقًا"));
    }
  }

  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      final userCredential = await firebaseAuthServices.signInWithFacebook();

      if (userCredential == null) {
        return left(ServerFailure("فشل تسجيل الدخول عبر فيسبوك"));
      }
      final userEntity = UserModel.fromFirebaseUser(userCredential.user!);

      return right(userEntity);
    } on CustomAuthException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithFacebook: ${e.toString()}');
      return left(ServerFailure("حدث خطأ غير متوقع، يرجى المحاولة لاحقًا"));
    }
  }

  //Netwrok Issue
  //f the Firestore failure is due to a temporary network issue, you might consider retrying the addUserData operation before deleting the user. For example:

  @override
  Future addUserData({required UserEntity user}) async {
    for (int i = 0; i < 3; i++) {
      try {
        await databaseService.addData(BackendEndpoints.addUserData, user.toMap());
        return; // Success, exit the function
      } catch (e) {
        if (i == 2) rethrow; // Last attempt failed, propagate the error
        await Future.delayed(Duration(seconds: 1)); // Wait before retrying
      }
    }
  }
}

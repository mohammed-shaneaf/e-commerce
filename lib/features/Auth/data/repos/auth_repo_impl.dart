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
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(String email, String password, String name) async {
    try {
      var user = await firebaseAuthServices.createUserWithEmailAndPassword(email: email, password: password);
      var userEntity = UserModel.fromFirebaseUser(user!);
      await addUserData(user: userEntity);
      return right(userEntity);
    } on CustomAuthException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      await Future.delayed(Duration(seconds: 1));

      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');

      return left(
        ServerFailure("لقد حدث خطأ ما، الرجاء المحاولة مرة أخرى"),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(String email, String password) async {
    try {
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

  @override
  Future addUserData({required UserEntity user}) async {
    await databaseService.addData(BackendEndpoints.addUserData, user.toMap());
  }

  @override
  Future addData({required UserEntity user}) {
    // TODO: implement addData
    throw UnimplementedError();
  }
}

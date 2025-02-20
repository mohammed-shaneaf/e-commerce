import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/faliure.dart';
import 'package:fruits_hub/features/Auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/Auth/domain/repos/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(String email, String password) {
    throw UnimplementedError();
  }
}

import 'package:fruits_hub/features/Auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<UserEntity> createUserWithEmailAndPassword(String email, String Password);
}

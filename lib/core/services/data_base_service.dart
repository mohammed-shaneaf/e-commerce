import 'package:fruits_hub/features/Auth/domain/entities/user_entity.dart';

abstract class DatabaseService {
  Future<void> addData(String path, Map<String, dynamic> data);

// if api token , if firebase uid , if any services we look about something identify user .
  Future<UserEntity> getUserData({required String path , required String uId});
}

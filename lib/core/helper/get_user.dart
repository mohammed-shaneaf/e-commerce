import 'dart:convert';

import 'package:fruits_hub/constant.dart';
import 'package:fruits_hub/core/services/shared_prefernces_singleton.dart';
import 'package:fruits_hub/features/Auth/data/models/user_model.dart';
import 'package:fruits_hub/features/Auth/domain/entities/user_entity.dart';

UserEntity getUser() {
  try {
    var jsonString = SharedPreferncesSingleton.getString(kUserData) ?? '';
    if (jsonString.isEmpty) {
      throw Exception('No user data found');
    }
    var userModel = UserModel.fromJson(jsonDecode(jsonString));
    return userModel.toEntity();
  } catch (e) {
    throw Exception('Failed to retrieve user: $e');
  }
}

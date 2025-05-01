import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/features/Auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({required super.name, required super.email, required super.uId});

  factory UserModel.fromFirebaseUser(User user) {
    return UserModel(
      name: user.displayName ?? '',
      email: user.email ?? '',
      uId: user.uid,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      uId: json['uId'] ?? '',
    );
  }

  factory UserModel.fromEntity(UserEntity userEntity) {
    return UserModel(
      name: userEntity.name,
      email: userEntity.email,
      uId: userEntity.uId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'uId': uId,
    };
  }

  UserModel copyWith({
    String? name,
    String? email,
    String? uId,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      uId: uId ?? this.uId,
    );
  }

  @override
  String toString() {
    return 'UserModel(name: $name, email: $email, uId: $uId)';
  }
}

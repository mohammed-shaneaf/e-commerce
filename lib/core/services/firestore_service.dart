import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fruits_hub/core/services/data_base_service.dart';
import 'package:fruits_hub/features/Auth/data/models/user_model.dart';
import 'package:fruits_hub/features/Auth/domain/entities/user_entity.dart';

class FirestoreService implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData(String path, Map<String, dynamic> data) async {
    await firestore.collection(path).add(data);
  }

  @override
  Future<UserEntity> getUserData({required String path, required String uId}) async {
    var data = await firestore.collection(path).doc(uId).get();

    return UserModel.fromJson(data.data() as Map<String, dynamic>);
  }
}

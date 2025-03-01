import 'package:fruits_hub/core/services/firebase_auth_services.dart';
import 'package:fruits_hub/features/Auth/data/repos/auth_repo_impl.dart';
import 'package:fruits_hub/features/Auth/domain/repos/auth_repo.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

// Singleton => It Creates An Object immediately when we call setup method
// Lazy Singelton =>  when you need to create an object you need to call it

void setup() {
  getIt.registerLazySingleton<FirebaseAuthServices>(() => FirebaseAuthServices());
  getIt.registerSingleton<AuthRepo>(AuthRepoImpl(
    firebaseAuthServices: getIt<FirebaseAuthServices>(),
  ));
}

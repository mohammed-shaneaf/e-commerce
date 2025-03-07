import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/Auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signin_cubit/signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  SigninCubit(this.authRepo) : super(SigninInitial());

  final AuthRepo authRepo;

  Future<void> signIn(String email, String password) async {
    emit(SigninLoading());
    final result = await authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (failure) => emit(SigninFaliure(errMessage: failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }

  Future<void> signInWithGoogle() async {
    emit(SigninLoading());
    final result = await authRepo.signInWithGoogle();
    result.fold(
      (failure) => emit(SigninFaliure(errMessage: failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }

  Future<void> signInWithFecebook() async {
    emit(SigninLoading());
    final result = await authRepo.signInWithFacebook();
    result.fold(
      (failure) => emit(SigninFaliure(errMessage: failure.message)),
      (userEntity) => emit(SigninSuccess(userEntity: userEntity)),
    );
  }
}

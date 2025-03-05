import 'package:fruits_hub/features/Auth/domain/entities/user_entity.dart';

abstract class SigninState {}

final class SigninInitial extends SigninState {}

final class SigninLoading extends SigninState {}

final class SigninSuccess extends SigninState {
  final UserEntity userEntity;
  SigninSuccess({required this.userEntity});
}

final class SigninFaliure extends SigninState {
  final String errMessage;
  SigninFaliure({required this.errMessage});
}

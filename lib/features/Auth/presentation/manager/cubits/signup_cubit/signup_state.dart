import 'package:fruits_hub/features/Auth/domain/entities/user_entity.dart';

abstract class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupLoading extends SignupState {}

final class SignupSuccess extends SignupState {
  final UserEntity userEntity;

  SignupSuccess({required this.userEntity});
}

final class SignupFaliure extends SignupState {
  final String errMessage;
  SignupFaliure({required this.errMessage});
}

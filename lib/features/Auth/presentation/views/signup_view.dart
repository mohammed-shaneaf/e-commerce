import 'package:flutter/material.dart';
import 'package:fruits_hub/core/services/get_it_service.dart';
import 'package:fruits_hub/features/Auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signup_cubit/signup_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/sign_up_view_body_bloc_cousmer.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = "SignUpView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(
        getIt<AuthRepo>(),
      ),
      child: Scaffold(
        body: SafeArea(child: SignViewBodyBlocConsumer()),
      ),
    );
  }
}

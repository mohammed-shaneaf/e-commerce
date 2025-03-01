import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signup_cubit/signup_state.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/sign_up_view_body.dart';

class SignViewBodyBlocConsumer extends StatelessWidget {
  const SignViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {},
      builder: (context, state) {
        return const SignUpViewBody();
      },
    );
  }
}

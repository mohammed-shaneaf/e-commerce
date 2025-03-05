import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/widgets/custom_model_progress_indicator.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signin_cubit/signin_state.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/sign_in_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignInViewBodyBlocConsumer extends StatelessWidget {
  const SignInViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninFaliure) {
      
        }
      },
      builder: (context, state) {
        bool isLoading = state is SigninLoading; 
        return CustomModelProgressIndicator(
          isLoading: isLoading,
          color: Colors.blue, 
          size: 50.0, 
          child: SignInViewBody(), 
        );
      },
    );
  }
}

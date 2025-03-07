import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/widgets/custom_snack_bar.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signin_cubit/signin_state.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/sign_in_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignInViewBodyBlocConsumer extends StatelessWidget {
  const SignInViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninCubit, SigninState>(
      listener: (context, state) {
        if (state is SigninSuccess) {
          CustomSnackBar.show(context, message: "تم تسجيل الدخول بنجاح!", isSuccess: true);
        } else if (state is SigninFaliure) {
          CustomSnackBar.show(context, message: state.errMessage, isSuccess: false);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SigninLoading,
          child: const SignInViewBody(),
        );
      },
    );
  }
}

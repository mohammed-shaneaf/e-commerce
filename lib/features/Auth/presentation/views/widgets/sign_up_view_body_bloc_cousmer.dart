import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/widgets/custom_snack_bar.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signup_cubit/signup_state.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignViewBodyBlocConsumer extends StatelessWidget {
  const SignViewBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          CustomSnackBar.show(context, message: "تم إنشاء الحساب بنجاح!", isSuccess: true);
          Navigator.pop(context);
        } else if (state is SignupFaliure) {
          CustomSnackBar.show(context, message: state.errMessage, isSuccess: false);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading,
          child: const SignUpViewBody(),
        );
      },
    );
  }
}

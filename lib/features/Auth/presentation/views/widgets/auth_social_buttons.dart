import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/orwidget.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/social_button.dart';
import 'package:fruits_hub/generated/l10n.dart';

class AuthSocialButtons extends StatelessWidget {
  const AuthSocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Orwidget(),
        16.verticalSpace,
        SocialButton(
            title: S.of(context).SignInWithGoogle,
            image: Assets.imagesGoogleicon,
            onpressed: () {
              context.read<SigninCubit>().signInWithGoogle();
            }),
        16.verticalSpace,
        SocialButton(title: S.of(context).SignInWithApple, image: Assets.imagesAppleicon, onpressed: () {}),
        16.verticalSpace,
        SocialButton(title: S.of(context).SignInWithFecebook, image: Assets.imagesFecebookicon, onpressed: () {}),
        66.verticalSpace,
      ],
    );
  }
}

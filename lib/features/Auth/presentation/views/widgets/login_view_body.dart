import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/widgets/custom_button.dart';
import 'package:fruits_hub/features/Auth/presentation/views/signup_view.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/auth_footer.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/auth_social_buttons.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/auth_text_field.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/forget_password_text.dart';
import 'package:fruits_hub/generated/l10n.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            24.verticalSpace,
            AuthTextFields(
              passwordController: passwordController,
              emailController: emailController,
            ),
            16.verticalSpace,
            const ForgotPasswordText(),
            33.verticalSpace,
            CustomButton(onPressed: () {}, text: S.of(context).Login),
            33.verticalSpace,
            AuthFooter(
              primaryText: S.of(context).DoNotHaveAnAccount,
              actionText: S.of(context).CreateAnAccount,
              onActionTap: () {
                Navigator.pushNamed(context, SignupView.routeName);
              },
            ),
            37.verticalSpace,
            const AuthSocialButtons(),
          ],
        ),
      ),
    );
  }
}

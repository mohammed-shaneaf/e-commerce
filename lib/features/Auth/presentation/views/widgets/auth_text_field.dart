import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/widgets/custom_password_field.dart';
import 'package:fruits_hub/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/generated/l10n.dart';

class AuthTextFields extends StatelessWidget {
  const AuthTextFields({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          controller: emailController,
          hintText: S.of(context).Email,
          textInputType: TextInputType.emailAddress,
        ),
        16.verticalSpace,
        PasswordField(passwordController: passwordController),
      ],
    );
  }
}

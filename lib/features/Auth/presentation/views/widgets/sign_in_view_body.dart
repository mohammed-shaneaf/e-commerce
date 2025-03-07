import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/widgets/custom_button.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub/features/Auth/presentation/views/signup_view.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/auth_footer.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/auth_social_buttons.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/auth_text_field.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/forget_password_text.dart';
import 'package:fruits_hub/generated/l10n.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

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
        child: Form(
          key: _formKey,
          autovalidateMode: autovalidateMode,
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
              CustomButton(
                onPressed: () {
                  if (_formKey.currentState != null && _formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    context.read<SigninCubit>().signIn(
                          emailController.text,
                          passwordController.text,
                        );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: S.of(context).Login,
              ),
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/sign_up_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = "SignUpView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SignUpViewBody()),
    );
  }
}

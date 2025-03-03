import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/widgets/custom_appbar.dart';
import 'package:fruits_hub/core/utils/widgets/custom_button.dart';
import 'package:fruits_hub/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signup_cubit/signup_cubit.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/auth_footer.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/auth_text_field.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/check_box_and_termconditions.dart';
import 'package:fruits_hub/generated/l10n.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
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
              buildAppBar(context, S.of(context).NewAccount),
              24.verticalSpace,
              CustomTextFormField(
                controller: nameController,
                textInputType: TextInputType.text,
                hintText: S.of(context).FullName,
                onSaved: (value) => nameController.text = value!,
              ),
              16.verticalSpace,
              AuthTextFields(
                emailController: emailController,
                passwordController: passwordController,
              ),
              16.verticalSpace,
              const CheckBoxAndTermConditions(),
              30.verticalSpace,
              CustomButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();

                    context.read<SignupCubit>().createUserWithEmailAndPassword(
                          emailController.text,
                          passwordController.text,
                          nameController.text,
                        );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                text: S.of(context).CreateNewAccount,
              ),
              26.verticalSpace,
              AuthFooter(
                primaryText: S.of(context).YoualreadyhaveAnAccount,
                actionText: S.of(context).Login,
                onActionTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

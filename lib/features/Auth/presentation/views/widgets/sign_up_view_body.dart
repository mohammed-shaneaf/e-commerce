import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/widgets/custom_appbar.dart';
import 'package:fruits_hub/core/utils/widgets/custom_button.dart';
import 'package:fruits_hub/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/auth_footer.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/auth_text_field.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/check_box_and_termconditions.dart';
import 'package:fruits_hub/generated/l10n.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildAppBar(context, S.of(context).NewAccount),
            24.verticalSpace,
            CustomTextFormField(textInputType: TextInputType.name, hintText: S.of(context).FullName),
            16.verticalSpace,
            AuthTextFields(),
            16.verticalSpace,
            CheckBoxAndTermConditions(),
            30.verticalSpace,
            CustomButton(onPressed: () {}, text: S.of(context).CreateNewAccount),
            26.verticalSpace,
            AuthFooter(
              primaryText: S.of(context).YoualreadyhaveAnAccount,
              actionText: S.of(context).Login,
              onActionTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

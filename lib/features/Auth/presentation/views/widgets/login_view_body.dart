import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/constant.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding2),
      child: SingleChildScrollView(
        child: Column(
          children: [
            24.verticalSpace,
            CustomTextFormField(
              hintText: S.of(context).Email,
              textInputType: TextInputType.emailAddress,
            ),
            16.verticalSpace,
            CustomTextFormField(
              hintText: S.of(context).Password,
              textInputType: TextInputType.emailAddress,
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 31),
                child: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xffC9CECF),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

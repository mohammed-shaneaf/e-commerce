import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/generated/l10n.dart';

class AuthTextFields extends StatelessWidget {
  const AuthTextFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: S.of(context).Email,
          textInputType: TextInputType.emailAddress,
        ),
        16.verticalSpace,
        CustomTextFormField(
          hintText: S.of(context).Password,
          textInputType: TextInputType.visiblePassword,
          suffixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 31.w),
            child: const Icon(
              Icons.remove_red_eye,
              color: Color(0xffC9CECF),
            ),
          ),
        ),
      ],
    );
  }
}

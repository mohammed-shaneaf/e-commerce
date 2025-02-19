import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/widgets/custom_check_box.dart';
import 'package:fruits_hub/generated/l10n.dart';

class CheckBoxAndTermConditions extends StatefulWidget {
  const CheckBoxAndTermConditions({super.key});

  @override
  State<CheckBoxAndTermConditions> createState() => _CheckBoxAndTermConditionsState();
}

class _CheckBoxAndTermConditionsState extends State<CheckBoxAndTermConditions> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        16.horizontalSpace,
        Expanded(
          child: RichText(
            text: TextSpan(
              text: S.of(context).Bycreatinganaccountyouagreeto,
              style: AppTextStyles.semiBold16.copyWith(
                color: Color(0xff949D9E),
              ),
              children: [
                WidgetSpan(
                    child: SizedBox(
                  width: 4.w,
                )),
                TextSpan(
                  text: S.of(context).OurTermsandConditions,
                  style: AppTextStyles.semiBold16.copyWith(color: AppColors.lightPrimaryColor),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

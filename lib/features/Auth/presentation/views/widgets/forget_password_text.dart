import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    bool isRtl = Directionality.of(context) == TextDirection.rtl;

    return Row(
      children: [
        if (isRtl) const Spacer(),
        Text(
          S.of(context).ForgetYourPassword,
          style: AppTextStyles.semiBold13.copyWith(color: AppColors.lightPrimaryColor),
        ),
        if (!isRtl) const Spacer(),
      ],
    );
  }
}

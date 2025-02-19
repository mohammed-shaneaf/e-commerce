import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({super.key});

  @override
  Widget build(BuildContext context) {
    bool isRtl = Directionality.of(context) == TextDirection.rtl;

    return RichText(
      text: TextSpan(
        text: S.of(context).DoNotHaveAnAccount,
        style: AppTextStyles.semiBold16.copyWith(color: Color(0xff949D9E)),
        children: [
          TextSpan(
            text: " ${S.of(context).CreateAnAccount}",
            style: AppTextStyles.semiBold16.copyWith(color: AppColors.lightPrimaryColor),
            recognizer: TapGestureRecognizer()..onTap = () {
              // اضف هنا التنقل إلى شاشة التسجيل
            },
          ),
        ],
      ),
      textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
    );
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class AuthFooter extends StatelessWidget {
  final String primaryText;
  final String actionText;
  final VoidCallback onActionTap;

  const AuthFooter({
    super.key,
    required this.primaryText,
    required this.actionText,
    required this.onActionTap,
  });

  @override
  Widget build(BuildContext context) {
    bool isRtl = Directionality.of(context) == TextDirection.rtl;

    return RichText(
      text: TextSpan(
        text: primaryText,
        style: AppTextStyles.semiBold16.copyWith(color: const Color(0xff949D9E)),
        children: [
          TextSpan(
            text: " $actionText",
            style: AppTextStyles.semiBold16.copyWith(color: AppColors.lightPrimaryColor),
            recognizer: TapGestureRecognizer()..onTap = onActionTap,
          ),
        ],
      ),
      textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
    );
  }
}

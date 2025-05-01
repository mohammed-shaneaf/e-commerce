import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/get_user.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/widgets/custom_notfication.dart';
import 'package:fruits_hub/generated/l10n.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        S.of(context).GoodMorning,
        style: AppTextStyles.regular16.copyWith(color: Colors.grey),
      ),
      leading: Image.asset(
        Assets.imagesProfileImage,
      ),
      subtitle: Text(
        getUser().name,
        style: AppTextStyles.bold16,
      ),
      trailing: CustomNotificationWidget(),
    );
  }
}

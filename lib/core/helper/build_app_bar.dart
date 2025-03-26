import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/utils/widgets/custom_notfication.dart';
import 'package:fruits_hub/generated/l10n.dart';

AppBar buildAppBar(BuildContext context, String title) {
  return AppBar(
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_back_ios,
        size: 18,
      ),
    ),
    backgroundColor: Colors.transparent,
    title: Text(
      title,
      style: AppTextStyles.bold19,
    ),
    centerTitle: true,
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomNotificationWidget(),
      ),
    ],
  );
}

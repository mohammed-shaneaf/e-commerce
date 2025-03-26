import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

class CustomNotificationWidget extends StatelessWidget {
  const CustomNotificationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return SvgPicture.asset(
      Assets.imagesNotifications,
      width: 80.w,
    );
  }
}

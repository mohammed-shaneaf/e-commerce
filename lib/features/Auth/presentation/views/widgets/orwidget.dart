import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/generated/l10n.dart';

class Orwidget extends StatelessWidget {
  const Orwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Divider(
          color: Colors.grey,
        )),
        18.horizontalSpace,
        Text(S.of(context).Or),
        18.horizontalSpace,
        Expanded(
            child: Divider(
          color: Colors.grey,
        )),
      ],
    );
  }
}

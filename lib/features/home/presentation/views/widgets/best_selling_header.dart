import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/best_selling_fruits/presentation/views/best_selling_fruits_view.dart';
import 'package:fruits_hub/generated/l10n.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, BestSellingFruitsView.routeName);
      },
      child: Row(
        children: [
          Text(
            S.of(context).bestseller,
            style: AppTextStyles.bold16,
          ),
          Spacer(),
          Text(
            S.of(context).More,
            style: AppTextStyles.regular13.copyWith(
              color: Color(0xff949D9E),
            ),
          ),
        ],
      ),
    );
  }
}

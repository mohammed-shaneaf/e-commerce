import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/constant.dart';
import 'package:fruits_hub/core/utils/app_color.dart';
import 'package:fruits_hub/core/utils/widgets/custom_button.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';
import 'package:fruits_hub/generated/l10n.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: OnBoardingPageView(),
        ),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            activeColor: AppColor.primaryColor,
            color: AppColor.primaryColor.withValues(alpha: .5),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding, vertical: 43),
          child: CustomButton(
            onPressed: () {},
            text: S.of(context).StartNow,
          ),
        ),
      ],
    );
  }
}

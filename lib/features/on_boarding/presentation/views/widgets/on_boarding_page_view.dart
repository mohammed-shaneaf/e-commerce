import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:fruits_hub/generated/l10n.dart';
import 'package:intl/intl.dart';

class OnBoardingPageView extends StatefulWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  State<OnBoardingPageView> createState() => _OnBoardingPageViewState();
}

class _OnBoardingPageViewState extends State<OnBoardingPageView> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.pageController,
      children: [
        PageViewItem(
          isVisable: widget.pageController.hasClients ? (widget.pageController.page ?? 0).round() == 0 : true,
          image: Assets.imagesPageViewItem1Image,
          backGroundImage: Assets.imagesPageViewItem1BackgroundImage,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(S.of(context).title, style: AppTextStyles.bold23),
              Text(
                'HUB',
                style: AppTextStyles.bold23.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              Text(
                'Fruit',
                style: AppTextStyles.bold23.copyWith(
                  color: AppColors.secondaryColor,
                ),
              ),
            ],
          ),
          subTitle: S.of(context).OnBoardingSubTitle1,
        ),
        PageViewItem(
          isVisable: widget.pageController.hasClients ? (widget.pageController.page ?? 0).round() != 0 : false,
          image: Assets.imagesPageViewItem2Image,
          backGroundImage: Assets.imagesPageViewItem2Backgroundimage,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.of(context).searchAndShop,
                style: AppTextStyles.bold23,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          subTitle: S.of(context).OnBoradingSubTitle,
        )
      ],
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}

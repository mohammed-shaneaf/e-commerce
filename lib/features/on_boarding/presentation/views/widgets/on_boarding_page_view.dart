import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:fruits_hub/generated/l10n.dart';
import 'package:intl/intl.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          isVisable: pageController.hasClients ? (pageController.page ?? 0).round() == 0 : true,
          image: Assets.imagesPageViewItem1Image,
          backGroundImage: Assets.imagesPageViewItem1BackgroundImage,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(S.of(context).title),
              Text('Fruit'),
              Text('HUB'),
            ],
          ),
          subTitle: S.of(context).OnBoardingSubTitle1,
        ),
        PageViewItem(
          isVisable: pageController.hasClients ? (pageController.page ?? 0).round() != 0 : false,
          image: Assets.imagesPageViewItem2Image,
          backGroundImage: Assets.imagesPageViewItem2Backgroundimage,
          title: Row(
            children: [
              Text(
                S.of(context).searchAndShop,
                style: TextStyle(fontSize: 23),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          subTitle: S.of(context).OnBoradingSubTitle2,
        )
      ],
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}

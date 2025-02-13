import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';
import 'package:fruits_hub/generated/l10n.dart';
import 'package:intl/intl.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItem(
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
            subTitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.'),
        PageViewItem(
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
            subTitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية')
      ],
    );
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == 'ar';
}

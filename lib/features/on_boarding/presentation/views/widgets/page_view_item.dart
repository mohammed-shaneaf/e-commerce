import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/constant.dart';
import 'package:fruits_hub/core/services/shared_prefernces_singleton.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/Auth/presentation/views/sign_in_view.dart';
import 'package:fruits_hub/generated/l10n.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key,
      required this.image,
      required this.backGroundImage,
      required this.title,
      required this.subTitle,
      required this.isVisable});
  final String image, backGroundImage;
  final Widget title;
  final String subTitle;
  final bool isVisable;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(
                  backGroundImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisable,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      SharedPreferncesSingleton.setBool(kIsOnBoardingViewSeen, true);
                      Navigator.pushReplacementNamed(context, SignInView.routeName);
                    },
                    child: Text(
                      S.of(context).skip,
                      style: TextStyle(color: Color(0xff949D9E)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            subTitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.semiBold13.copyWith(
              color: Color(0xff4E5556),
            ),
          ),
        ),
      ],
    );
  }
}

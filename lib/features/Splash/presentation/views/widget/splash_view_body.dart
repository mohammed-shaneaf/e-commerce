import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    executeNavigation();
  }

  @override
  Widget build(BuildContext context) {
    // IDentify The Diercation of the app based on langauge
    bool isRtl = Directionality.of(context) == TextDirection.rtl;

    return Directionality(
      textDirection: isRtl ? TextDirection.rtl : TextDirection.ltr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: isRtl ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              SvgPicture.asset(Assets.imagesPlant),
            ],
          ),
          SvgPicture.asset(Assets.imagesLogo),
          SvgPicture.asset(
            Assets.imagesSplashButton,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  void executeNavigation() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                  child: Text(S.of(context).skip),
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
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem(
      {super.key, required this.image, required this.backGroundImage, required this.title, required this.subTitle});
  final String image, backGroundImage;
  final Widget title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

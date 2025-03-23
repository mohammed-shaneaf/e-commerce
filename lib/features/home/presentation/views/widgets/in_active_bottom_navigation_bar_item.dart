import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveBottomNavigationBarItem extends StatelessWidget {
  const InActiveBottomNavigationBarItem({super.key, required this.Image});

  final String Image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // flex: 2,
      child: SvgPicture.asset(Image),
    );
  }
}

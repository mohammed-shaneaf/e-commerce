import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/widgets/fruit_item.dart';

const kHorizontalPadding = EdgeInsets.symmetric(horizontal: 16);

class BestSellingGridViewItems extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  const BestSellingGridViewItems({
    super.key,
    this.crossAxisCount = 2,
    this.childAspectRatio = 163 / 214,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: kHorizontalPadding,
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          mainAxisSpacing: 8,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) => const FruitItem(),
      ),
    );
  }
}
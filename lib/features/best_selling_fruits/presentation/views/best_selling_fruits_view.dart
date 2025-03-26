import 'package:flutter/material.dart';
import 'package:fruits_hub/core/helper/build_app_bar.dart';
import 'package:fruits_hub/features/best_selling_fruits/presentation/views/widgets/best_selling_fruits_view_body.dart';
import 'package:fruits_hub/generated/l10n.dart';

class BestSellingFruitsView extends StatelessWidget {
  const BestSellingFruitsView({super.key});

  static const String routeName = 'bestSellingFruits';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, S.of(context).bestseller),
      body: BestSellingFruitsViewBody(),
    );
  }
}

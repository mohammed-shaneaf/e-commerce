import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/constant.dart';
import 'package:fruits_hub/core/utils/search_text_field.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/featured_item.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/featured_list.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                CustomHomeAppBar(),
                16.verticalSpace,
                SearchTextField(),
                12.verticalSpace,
                FeaturedList(),
              ],
            ),
          ),
        )
      ],
    );
  }
}

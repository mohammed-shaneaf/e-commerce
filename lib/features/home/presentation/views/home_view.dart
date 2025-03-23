import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/custom_buttom_navigation_bar.dart';
import 'package:fruits_hub/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = 'homeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButtomNavigationBar(),
      body: SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}

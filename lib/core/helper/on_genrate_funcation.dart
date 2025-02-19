import 'package:flutter/material.dart';
import 'package:fruits_hub/features/Auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/Auth/presentation/views/signup_view.dart';
import 'package:fruits_hub/features/Splash/presentation/views/splash_view.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/on_boarding_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SignupView.routeName:
      return MaterialPageRoute(builder: (context) => const SignupView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: Center(child: Text("Page Not Found")),
        ),
      );
  }
}

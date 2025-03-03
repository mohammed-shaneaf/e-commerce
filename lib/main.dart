import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fruits_hub/core/helper/on_genrate_funcation.dart';
import 'package:fruits_hub/core/services/custom_bloc_observer.dart';
import 'package:fruits_hub/core/services/get_it_service.dart';
import 'package:fruits_hub/core/services/shared_prefernces_singleton.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/features/Splash/presentation/views/splash_view.dart';
import 'package:fruits_hub/firebase_options.dart';
import 'package:fruits_hub/generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CustomBlocObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await SharedPreferncesSingleton.init();
  setupGetIt();
  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override

  /// Builds the main widget tree for the FruitsHub app.
  ///
  /// This method initializes the `ScreenUtil` with a design size and returns
  /// a `MaterialApp` configured with the app's theme, locale, localization
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(812, 375),
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Cairo',
          scaffoldBackgroundColor: Colors.white,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColor),
        ),
        locale: Locale('ar'),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        initialRoute: SplashView.routeName,
      ),
    );
  }
}

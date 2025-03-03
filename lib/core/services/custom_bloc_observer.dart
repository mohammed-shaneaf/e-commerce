import 'package:logger/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

final Logger logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    errorMethodCount: 5,
    lineLength: 80,
    colors: true,
    printEmojis: true,
    printTime: false,
  ),
);

class CustomBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    logger.i("🟢 Bloc Created: ${bloc.runtimeType}");
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    logger.d("🔄 State Changed in ${bloc.runtimeType}:\n   🔹 From: ${change.currentState}\n   🔹 To  : ${change.nextState}");
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    logger.e("🔥 Error in ${bloc.runtimeType}: $error\n   StackTrace:", error: error, stackTrace: stackTrace);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    super.onClose(bloc);
    logger.w("❌ Bloc Closed: ${bloc.runtimeType}");
  }
}

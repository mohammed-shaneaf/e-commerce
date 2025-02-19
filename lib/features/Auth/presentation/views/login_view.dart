import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/widgets/custom_appbar.dart';
import 'package:fruits_hub/generated/l10n.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, S.of(context).Login),
    );
  }
}

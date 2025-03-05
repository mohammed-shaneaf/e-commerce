import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/services/get_it_service.dart';
import 'package:fruits_hub/core/utils/widgets/custom_appbar.dart';
import 'package:fruits_hub/features/Auth/domain/repos/auth_repo.dart';
import 'package:fruits_hub/features/Auth/presentation/manager/cubits/signin_cubit/signin_cubit.dart';
import 'package:fruits_hub/features/Auth/presentation/views/widgets/sign_in_view_body.dart';
import 'package:fruits_hub/generated/l10n.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, S.of(context).Login),
      body: SafeArea(
          child: BlocProvider(
        create: (context) => SigninCubit(getIt.get<AuthRepo>()),
        child: SignInViewBody(),
      )),
    );
  }
}

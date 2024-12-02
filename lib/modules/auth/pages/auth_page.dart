import 'package:flutter/material.dart';

import '../../../interfaces/intefaces.dart';
import '../components/auth_template.dart';
import '../controller/auth_cubit.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthTemplate(
      controller: injector.get<AuthCubit>(),
    );
  }
}

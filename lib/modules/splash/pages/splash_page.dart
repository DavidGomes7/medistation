import 'package:flutter/material.dart';

import '../../../interfaces/intefaces.dart';
import '../components/components.dart';
import '../controller/controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashTemplate(
      controller: injector.get<SplashCubit>(),
    );
  }
}

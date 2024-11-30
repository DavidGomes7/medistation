import 'package:flutter/material.dart';

import '../../../components/components.dart';
import '../../../routes/routes.dart';

class SplashTemplate extends StatelessWidget {
  const SplashTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MediButton.primary(
          label: 'Go home',
          onPressed: MediNavigator.home,
        ),
      ),
    );
  }
}

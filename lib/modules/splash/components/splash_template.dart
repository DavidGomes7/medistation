import 'package:flutter/material.dart';

import '../../../routes/routes.dart';

class SplashTemplate extends StatelessWidget {
  const SplashTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: MediNavigator.home,
          child: Text('Go Home'),
        ),
      ),
    );
  }
}

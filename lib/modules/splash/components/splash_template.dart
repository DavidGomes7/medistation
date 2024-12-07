import 'package:flutter/material.dart';

import '../../../routes/routes.dart';
import '../../../theme/theme.dart';
import '../controller/controller.dart';

class SplashTemplate extends StatefulWidget {
  const SplashTemplate({super.key, required this.controller});

  final SplashCubit controller;

  @override
  State<SplashTemplate> createState() => _SplashTemplateState();
}

class _SplashTemplateState extends State<SplashTemplate> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 2),
      MediNavigator.home,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MediColors.primary,
      body: Center(
        child: Image.asset(
          'assets/icons/icon.png',
          scale: 6,
          color: MediColors.textSecondary,
        ),
      ),
    );
  }
}

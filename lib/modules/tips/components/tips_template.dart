import 'package:flutter/material.dart';

import '../controller/controller.dart';

class TipsTemplate extends StatelessWidget {
  const TipsTemplate({super.key, required this.controller});

  final TipsCubit controller;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('tips'),
      ),
    );
  }
}

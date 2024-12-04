import 'package:flutter/material.dart';

import '../controller/controller.dart';

class TipsTemplate extends StatelessWidget {
  const TipsTemplate({super.key, required this.controller});

  final TipsCubit controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('tips'),
      ),
    );
  }
}

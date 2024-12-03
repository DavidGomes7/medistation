import 'package:flutter/material.dart';

import '../controller/controller.dart';

class GoalTemplate extends StatelessWidget {
  const GoalTemplate({super.key, required this.controller});

  final GoalCubit controller;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('goal'),
      ),
    );
  }
}

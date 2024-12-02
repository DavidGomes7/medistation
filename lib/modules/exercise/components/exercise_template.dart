import 'package:flutter/material.dart';

import '../controller/controller.dart';

class ExerciseTemplate extends StatelessWidget {
  const ExerciseTemplate({super.key, required this.controller});

  final ExerciseCubit controller;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('exerise'),
      ),
    );
  }
}

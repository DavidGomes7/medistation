import 'package:flutter/material.dart';

import '../../../interfaces/intefaces.dart';
import '../components/components.dart';
import '../controller/controller.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ExerciseTemplate(
      controller: injector.get<ExerciseCubit>(),
    );
  }
}

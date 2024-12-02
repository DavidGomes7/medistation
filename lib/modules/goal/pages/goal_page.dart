import 'package:flutter/material.dart';

import '../../../interfaces/intefaces.dart';
import '../components/components.dart';
import '../controller/controller.dart';

class GoalPage extends StatelessWidget {
  const GoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GoalTemplate(
      controller: injector.get<GoalCubit>(),
    );
  }
}

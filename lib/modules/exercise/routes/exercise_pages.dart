import 'package:go_router/go_router.dart';

import '../pages/exercise_page.dart';
import 'execise_routes.dart';

abstract class ExercisePages {
  static final routes = [
    GoRoute(
      path: ExeciseRoutes.exercise,
      name: ExeciseRoutes.exercise,
      builder: (context, state) => const ExercisePage(),
    ),
  ];
}

import 'package:go_router/go_router.dart';

import '../pages/pages.dart';
import 'goal_routes.dart';

abstract class GoalPags {
  static final routes = [
    GoRoute(
      path: GoalRoutes.goal,
      name: GoalRoutes.goal,
      builder: (context, state) => const GoalPage(),
    ),
  ];
}

import 'package:go_router/go_router.dart';

import '../pages/pages.dart';
import 'goals_routes.dart';

abstract class GoalsPages {
  static final routes = [
    GoRoute(
      path: GoalsRoutes.goals,
      name: GoalsRoutes.goals,
      builder: (context, state) => const GoalsPage(),
    ),
  ];
}

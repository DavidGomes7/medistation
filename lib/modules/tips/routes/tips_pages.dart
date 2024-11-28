import 'package:go_router/go_router.dart';

import '../components/tips_template.dart';
import 'tips_routes.dart';

abstract class TipsPages {
  static final routes = [
    GoRoute(
      path: TipsRoutes.tips,
      name: TipsRoutes.tips,
      builder: (context, state) => const TipsTemplate(),
    ),
  ];
}

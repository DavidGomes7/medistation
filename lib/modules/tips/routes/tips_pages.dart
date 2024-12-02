import 'package:go_router/go_router.dart';

import '../pages/tips_page.dart';
import 'tips_routes.dart';

abstract class TipsPages {
  static final routes = [
    GoRoute(
      path: TipsRoutes.tips,
      name: TipsRoutes.tips,
      builder: (context, state) => const TipsPage(),
    ),
  ];
}

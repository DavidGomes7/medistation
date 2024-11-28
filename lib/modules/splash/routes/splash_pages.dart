import 'package:go_router/go_router.dart';

import '../pages/pages.dart';
import 'splash_routes.dart';

abstract class SplashPages {
  static final routes = [
    GoRoute(
      path: SplashRoutes.splash,
      name: SplashRoutes.splash,
      builder: (context, state) => const SplashPage(),
    ),
  ];
}

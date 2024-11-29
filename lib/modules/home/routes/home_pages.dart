import 'package:go_router/go_router.dart';

import '../pages/pages.dart';
import 'home_routes.dart';

abstract class HomePages {
  static final routes = [
    GoRoute(
      path: HomeRoutes.home,
      name: HomeRoutes.home,
      builder: (context, state) => const HomePage(),
    ),
  ];
}

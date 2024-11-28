import 'package:go_router/go_router.dart';

import '../pages/auth_page.dart';
import 'auth_routes.dart';

abstract class AuthPages {
  static final routes = [
    GoRoute(
      path: AuthRoutes.auth,
      name: AuthRoutes.auth,
      builder: (context, state) => const AuthPage(),
    ),
  ];
}

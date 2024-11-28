import 'package:go_router/go_router.dart';

import '../modules/modules.dart';

abstract class MediPages {
  static final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        redirect: (_, __) => SplashRoutes.splash,
      ),
      ...SplashPages.routes,
      ...AuthPages.routes,
      ...HomePages.routes,
    ],
  );
}

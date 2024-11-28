import 'package:go_router/go_router.dart';

import '../pages/profile_page.dart';
import 'profile_routes.dart';

abstract class ProfilePages {
  static final routes = [
    GoRoute(
      path: ProfileRoutes.profile,
      name: ProfileRoutes.profile,
      builder: (context, state) => const ProfilePage(),
    ),
  ];
}

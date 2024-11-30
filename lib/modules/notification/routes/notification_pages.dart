import 'package:go_router/go_router.dart';

import '../pages/notification_page.dart';
import 'notification_routes.dart';

abstract class NotificationPages {
  static final routes = [
    GoRoute(
      path: NotificationRoutes.notification,
      name: NotificationRoutes.notification,
      builder: (context, state) => const NotificationPage(),
    ),
  ];
}

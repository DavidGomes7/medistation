import '../interfaces/interfaces.dart';
import '../modules/modules.dart';
import 'medi_pages.dart';

abstract class MediNavigator {
  static final MediRouter router = GoRouterImpl(MediPages.router);

  static void splash() {
    return router.go(SplashRoutes.splash);
  }

  static void auth() {
    return router.go(AuthRoutes.auth);
  }

  static void home() {
    return router.go(HomeRoutes.home);
  }

  static void goal() {
    return router.go(GoalRoutes.goal);
  }

  static void notification() {
    return router.go(NotificationRoutes.notification);
  }

  static void profile() {
    return router.go(ProfileRoutes.profile);
  }

  static void tips() {
    return router.go(TipsRoutes.tips);
  }
}

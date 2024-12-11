import '../interfaces/intefaces.dart';
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

  static Future<void> goal() {
    return router.pushNamed(GoalsRoutes.goals);
  }

  static Future<void> notification() {
    return router.pushNamed(NotificationRoutes.notification);
  }

  static Future<void> profile() {
    return router.pushNamed(ProfileRoutes.profile);
  }

  static Future<void> tips() {
    return router.pushNamed(TipsRoutes.tips);
  }

  static Future<void> exercise() {
    return router.pushNamed(ExeciseRoutes.exercise);
  }
}

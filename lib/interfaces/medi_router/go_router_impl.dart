import 'package:go_router/go_router.dart';

import '../interfaces.dart';

class GoRouterImpl implements MediRouter {
  const GoRouterImpl(this.router);

  final GoRouter router;

  @override
  void go(String location, {Object? extra}) {
    router.go(location, extra: extra);
  }

  @override
  void goNamed(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    router.goNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  @override
  Future<T?> push<T extends Object?>(String location, {Object? extra}) {
    return router.push<T>(location, extra: extra);
  }

  @override
  Future<T?> pushNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    return router.pushNamed<T>(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  @override
  bool canPop() {
    return router.canPop();
  }

  @override
  void pop<T extends Object?>([T? result]) {
    router.pop(result);
  }
}

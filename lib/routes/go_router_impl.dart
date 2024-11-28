import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../interfaces/interfaces.dart';

class GoRouterImpl implements MediRouter {
  const GoRouterImpl(this.context);

  final BuildContext context;

  @override
  void go(String location, {Object? extra}) {
    context.go(location, extra: extra);
  }

  @override
  void goNamed(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    context.goNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  @override
  Future<T?> push<T extends Object?>(String location, {Object? extra}) {
    return context.push<T>(location, extra: extra);
  }

  @override
  Future<T?> pushNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) {
    return context.pushNamed<T>(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  @override
  bool canPop() {
    return context.canPop();
  }

  @override
  void pop<T extends Object?>([T? result]) {
    context.pop(result);
  }
}

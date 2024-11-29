abstract class MediRouter {
  void go(String location, {Object? extra});
  void goNamed(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  });
  Future<T?> push<T extends Object?>(String location, {Object? extra});
  Future<T?> pushNamed<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  });
  bool canPop();
  void pop<T extends Object?>([T? result]);
}

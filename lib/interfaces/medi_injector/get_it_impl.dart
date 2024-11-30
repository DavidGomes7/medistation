import 'package:get_it/get_it.dart';

import 'medi_injector.dart';

class GetItImpl implements MediInjector {
  GetItImpl() {
    _register();
  }

  void _register() {}

  @override
  T get<T extends Object>() {
    return GetIt.I.get<T>();
  }

  @override
  void replace<T extends Object>(T instance) {
    GetIt.I.unregister(instance: instance);
    GetIt.I.registerLazySingleton<T>(() => instance);
  }
}

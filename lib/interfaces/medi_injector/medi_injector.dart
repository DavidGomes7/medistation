import 'get_it_impl.dart';

abstract class MediInjector {
  T get<T extends Object>();
  void replace<T extends Object>(T instance);
}

final MediInjector injector = GetItImpl();

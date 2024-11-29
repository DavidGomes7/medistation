abstract class MediInjector {
  T get<T extends Object>();
  void replace<T extends Object>(T instance);
}

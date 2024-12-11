import 'package:get_it/get_it.dart';

import '../../modules/modules.dart';
import 'medi_injector.dart';

class GetItImpl implements MediInjector {
  final GetIt _getIt = GetIt.instance;

  GetItImpl() {
    _register();
  }

  void _register() {
    _getIt.registerLazySingleton<AuthCubit>(AuthCubit.new);
    _getIt.registerLazySingleton<ExerciseCubit>(ExerciseCubit.new);
    _getIt.registerLazySingleton<GoalsCubit>(GoalsCubit.new);
    _getIt.registerLazySingleton<HomeCubit>(HomeCubit.new);
    _getIt.registerLazySingleton<NotificationCubit>(NotificationCubit.new);
    _getIt.registerLazySingleton<ProfileCubit>(ProfileCubit.new);
    _getIt.registerLazySingleton<SplashCubit>(SplashCubit.new);
    _getIt.registerLazySingleton<TipsCubit>(TipsCubit.new);
  }

  @override
  T get<T extends Object>() {
    return _getIt.get<T>();
  }

  @override
  void replace<T extends Object>(T instance) {
    _getIt.unregister(instance: instance);
    _getIt.registerLazySingleton<T>(() => instance);
  }
}

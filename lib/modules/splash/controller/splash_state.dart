part of 'splash_cubit.dart';

sealed class SplashState extends Equatable {
  const SplashState();

  @override
  List<Object> get props => [];
}

final class SplashInitial extends SplashState {}

final class SplashLoading extends SplashState {}

final class SplashError extends SplashState {
  const SplashError(this.error);

  final String error;

  @override
  List<Object> get props => [];
}

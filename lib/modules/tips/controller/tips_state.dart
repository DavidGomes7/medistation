part of 'tips_cubit.dart';

sealed class TipsState extends Equatable {
  const TipsState();

  @override
  List<Object> get props => [];
}

final class InitialTipsState extends TipsState {}

final class LoadingTipsState extends TipsState {}

final class ErrorTipsState extends TipsState {
  const ErrorTipsState(this.error);

  final String error;

  @override
  List<Object> get props => [];
}

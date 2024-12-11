part of 'goals_cubit.dart';

sealed class GoalsState extends Equatable {
  const GoalsState();

  @override
  List<Object> get props => [];
}

final class GoalsInitial extends GoalsState {}

final class GoalsLoading extends GoalsState {}

final class GoalsError extends GoalsState {
  const GoalsError(this.error);

  final String error;

  @override
  List<Object> get props => [];
}

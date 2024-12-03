part of 'goal_cubit.dart';

sealed class GoalState extends Equatable {
  const GoalState();

  @override
  List<Object> get props => [];
}

final class GoalInitial extends GoalState {}

final class GoalLoading extends GoalState {}

final class GoalError extends GoalState {
  const GoalError(this.error);

  final String error;

  @override
  List<Object> get props => [];
}

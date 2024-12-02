part of 'exercise_cubit.dart';

sealed class ExerciseState extends Equatable {
  const ExerciseState();

  @override
  List<Object> get props => [];
}

final class ExerciseInitial extends ExerciseState {}

final class ExerciseLoading extends ExerciseState {}

final class ExerciseError extends ExerciseState {
  const ExerciseError(this.error);

  final String error;

  @override
  List<Object> get props => [];
}

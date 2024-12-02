part of 'tips_cubit.dart';

sealed class TipsState extends Equatable {
  const TipsState();

  @override
  List<Object> get props => [];
}

final class TipsInitial extends TipsState {}

final class TipsLoading extends TipsState {}

final class TipsError extends TipsState {
  const TipsError(this.error);

  final String error;

  @override
  List<Object> get props => [];
}

part of 'profile_cubit.dart';

sealed class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileError extends ProfileState {
  const ProfileError(this.error);

  final String error;

  @override
  List<Object> get props => [];
}

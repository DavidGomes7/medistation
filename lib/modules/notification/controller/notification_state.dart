part of 'notification_cubit.dart';

sealed class NotificationState extends Equatable {
  const NotificationState();

  @override
  List<Object> get props => [];
}

final class NotificationInitial extends NotificationState {}

final class NotificationLoading extends NotificationState {}

final class NotificationError extends NotificationState {
  const NotificationError(this.error);

  final String error;

  @override
  List<Object> get props => [];
}

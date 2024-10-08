part of 'get_notification_bloc.dart';

sealed class GetNotificationState extends Equatable {
  const GetNotificationState();

  @override
  List<Object> get props => [];
}

final class GetNotificationInitial extends GetNotificationState {}

final class GetNotificationLoading extends GetNotificationState {}

final class GetNotificationLoaded extends GetNotificationState {
  final List<Notification> data;
  const GetNotificationLoaded(this.data);
}

final class GetNotificationFailed extends GetNotificationState {}

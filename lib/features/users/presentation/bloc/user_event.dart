part of 'user_bloc.dart';

sealed class UserEvent extends Equatable {
  const UserEvent();
}

class UserFetchEvent extends UserEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

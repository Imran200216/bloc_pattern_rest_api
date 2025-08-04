part of 'user_bloc.dart';

sealed class UserState extends Equatable {
  const UserState();
}

final class UserInitial extends UserState {
  @override
  List<Object> get props => [];
}

final class UserLoadingState extends UserState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

final class UserLoadedSuccessState extends UserState {
  final List<UserEntities> users;

  const UserLoadedSuccessState({required this.users});

  @override
  // TODO: implement props
  List<Object?> get props => [users];
}

final class UserLoadedFailureState extends UserState {
  final String errorMessage;

  const UserLoadedFailureState({required this.errorMessage});

  @override
  // TODO: implement props
  List<Object?> get props => [errorMessage];
}

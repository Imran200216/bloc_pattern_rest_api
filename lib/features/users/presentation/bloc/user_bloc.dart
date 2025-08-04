import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rest_api_bloc_pattern/core/log/app_logger_helper.dart';
import 'package:rest_api_bloc_pattern/features/users/domain/entities/user_entities.dart';
import 'package:rest_api_bloc_pattern/features/users/domain/usecases/get_all_user_use_case.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetAllUserUseCase getAllUserUseCase;

  UserBloc(this.getAllUserUseCase) : super(UserInitial()) {
    // User Fetch Event
    on<UserFetchEvent>((event, emit) async {
      try {
        emit(UserLoadingState());

        final result = await getAllUserUseCase.call();

        emit(UserLoadedSuccessState(users: result));

        AppLoggerHelper.logInfo(
          result.map((user) => user.firstName).toList().toString(),
        );
      } catch (e) {
        emit(UserLoadedFailureState(errorMessage: e.toString()));

        AppLoggerHelper.logError(e.toString());
      }
    });
  }
}

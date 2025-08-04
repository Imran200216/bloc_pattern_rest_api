import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:rest_api_bloc_pattern/features/users/data/datasources/remote/user_remote_data_source.dart';
import 'package:rest_api_bloc_pattern/features/users/data/repository/user_repository_impl.dart';
import 'package:rest_api_bloc_pattern/features/users/domain/repository/user_repository.dart';
import 'package:rest_api_bloc_pattern/features/users/domain/usecases/get_all_user_use_case.dart';
import 'package:rest_api_bloc_pattern/features/users/presentation/bloc/user_bloc.dart';

final GetIt getIt = GetIt.instance;

void setUpLocator() {
  // Dio
  getIt.registerLazySingleton<Dio>(() => Dio());

  // Data Source
  getIt.registerLazySingleton<UserRemoteDataSource>(
    () => UserRemoteDataSource(dio: getIt<Dio>()),
  );

  // Repository Impl
  getIt.registerLazySingleton<UserRepository>(
    () =>
        UserRepositoryImpl(userRemoteDataSource: getIt<UserRemoteDataSource>()),
  );

  // UseCase
  getIt.registerLazySingleton<GetAllUserUseCase>(
    () => GetAllUserUseCase(userRepository: getIt<UserRepository>()),
  );

  // Bloc
  getIt.registerFactory<UserBloc>(() => UserBloc(getIt<GetAllUserUseCase>()));
}

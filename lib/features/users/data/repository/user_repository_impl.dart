import 'package:rest_api_bloc_pattern/features/users/data/datasources/remote/user_remote_data_source.dart';
import 'package:rest_api_bloc_pattern/features/users/domain/entities/user_entities.dart';
import 'package:rest_api_bloc_pattern/features/users/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource userRemoteDataSource;

  UserRepositoryImpl({required this.userRemoteDataSource});

  @override
  Future<List<UserEntities>> fetchAllUsers() async {
    return await userRemoteDataSource.getUsers();
  }
}

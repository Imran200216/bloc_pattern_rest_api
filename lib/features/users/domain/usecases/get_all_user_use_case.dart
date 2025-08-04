import 'package:rest_api_bloc_pattern/features/users/domain/entities/user_entities.dart';
import 'package:rest_api_bloc_pattern/features/users/domain/repository/user_repository.dart';

class GetAllUserUseCase {
  final UserRepository userRepository;

  GetAllUserUseCase({required this.userRepository});

  Future<List<UserEntities>> call() async {
    return await userRepository.fetchAllUsers();
  }
}

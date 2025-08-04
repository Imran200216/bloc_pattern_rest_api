import 'package:rest_api_bloc_pattern/features/users/domain/entities/user_entities.dart';

abstract class UserRepository {
  // Fetch All Users
  Future<List<UserEntities>> fetchAllUsers();
}

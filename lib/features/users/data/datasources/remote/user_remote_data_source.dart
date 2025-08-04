import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:rest_api_bloc_pattern/core/constants/app_api_constants.dart';
import 'package:rest_api_bloc_pattern/features/users/data/models/user_models.dart';

class UserRemoteDataSource {
  final Dio dio;

  UserRemoteDataSource({required this.dio}) {
    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }

  Future<List<UserModel>> getUsers() async {
    final response = await dio.get(AppApiConstants.user);

    if (response.statusCode == 200) {
      final json = response.data;
      final List<dynamic> data = json['users'];

      // Converting Raw Json to Dart Object
      return data.map((user) => UserModel.fromJson(user)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}

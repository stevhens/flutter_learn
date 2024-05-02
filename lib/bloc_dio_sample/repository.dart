import 'package:dio/dio.dart';
import 'package:flutter_learn/bloc_dio_sample/user.dart';

class UserRepository {
  final Dio _dio = Dio();

  Future<List<UserModel>> getUsers() async {
    final response = await _dio.get('https://reqres.in/api/users?page=1');

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data['data'];
      return data.map((json) => UserModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to fetch users: ${response.statusCode}');
    }
  }
}

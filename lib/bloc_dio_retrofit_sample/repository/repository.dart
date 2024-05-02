import 'package:dio/dio.dart';
import 'package:flutter_learn/bloc_dio_retrofit_sample/model/user.dart';

abstract class Repository {
  Future<List<User>> getUsers();
}

class UserRepository implements Repository {
  UserApi client;

  UserRepository(this.client);

  Future<List<User>> getUsers() async {
    int page = 1;

    return await client.getUsers(page).then((response) {
      return response.data;
    }).catchError((obj) {
      // error here.
      switch (obj.runtimeType) {
        case DioException:
          final res = (obj as DioException).response;
          print(res);
          break;
        default:
          break;
      }

      return <User>[];
    });
  }
}

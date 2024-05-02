import 'package:dio/dio.dart';
import 'package:flutter_learn/bloc_dio_retrofit_sample/repository/repository.dart';
import 'package:flutter_learn/bloc_dio_retrofit_sample/model/user.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> setupDi() async {
  final dio = Dio();
  final client = UserApi(dio);

  serviceLocator
      .registerLazySingleton<UserRepository>(() => UserRepository(client));
}

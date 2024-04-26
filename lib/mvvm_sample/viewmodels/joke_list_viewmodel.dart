import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/mvvm_sample/models/Joke.dart';

class JokesViewModel extends ChangeNotifier {
  final Dio _dio = Dio();
  List<Joke> jokes = [];
  bool isLoading = false;
  String? error;

  JokesViewModel() {
    fetchJokes();
  }

  Future<void> fetchJokes() async {
    isLoading = true;
    error = null;
    notifyListeners();

    try {
      final response = await _dio.get('https://official-joke-api.appspot.com/jokes/ten');
      if (response.statusCode == 200) {
        final List<dynamic> jokesJson = response.data;
        jokes = jokesJson.map((json) => Joke.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load jokes: ${response.statusCode}');
      }
    } catch (e) {
      error = 'Failed to load jokes: $e';
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
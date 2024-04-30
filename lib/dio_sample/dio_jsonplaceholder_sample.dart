import 'dart:async';
import 'package:dio/dio.dart';

class Post {
  final int id;
  final int userId;
  final String title;
  final String body;

  Post(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
    );
  }
}

class ViewModel {
  final Dio _dio = Dio();
  List<Post> posts = [];
  String? error;

  Future<void> fetchPosts() async {
    try {
      final response =
          await _dio.get('https://jsonplaceholder.typicode.com/posts');
      if (response.statusCode == 200) {
        final List<dynamic> data = response.data;
        posts = data.map((json) => Post.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load: ${response.statusCode}');
      }
    } catch (e) {
      error = 'Failed to load jokes: $e';
    } finally {
      // isLoading = false;
    }
  }
}

void fetchPosts() {
  final viewModel = ViewModel();
  viewModel.fetchPosts().then((_) {
    if (viewModel.error != null) {
      print(viewModel.error);
    } else {
      print('Posts loaded successfully:');
      viewModel.posts.forEach((post) {
        print(
            'ID: ${post.id},\n UserID: ${post.userId},\n Title: ${post.title},\n Body: ${post.body}\n');
      });
    }
  });
}

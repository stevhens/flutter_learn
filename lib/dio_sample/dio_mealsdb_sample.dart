import 'dart:async';
import 'package:dio/dio.dart';

class Meal {
  final String id;
  final String name;
  final String? category;
  final String imageUrl;

  Meal(
      {required this.id,
      required this.name,
      String? category,
      required this.imageUrl})
      : category = category ?? 'Default Category';

  factory Meal.fromJson(Map<String, dynamic> json) {
    return Meal(
      id: json['idMeal'],
      name: json['strMeal'],
      category: json['strCategory'],
      imageUrl: json['strMealThumb'],
    );
  }
}

class ViewModel {
  final Dio _dio = Dio();
  List<Meal> meals = [];
  String? error;

  Future<void> fetchMeals() async {
    String ingredient = 'chicken_breast';

    try {
      final response = await _dio.get(
          'https://www.themealdb.com/api/json/v1/1/filter.php',
          queryParameters: {'i': ingredient});

      if (response.statusCode == 200) {
        final List<dynamic> data = response.data['meals'];
        meals = data.map((json) => Meal.fromJson(json)).toList();
      } else {
        throw Exception('Failed to fetch meals: ${response.statusCode}');
      }
    } catch (e) {
      error = 'Failed to load meals: $e';
    } finally {
      // isLoading = false;
    }
  }
}

void fetchMeals() {
  final viewModel = ViewModel();
  viewModel.fetchMeals().then((_) {
    if (viewModel.error != null) {
      print(viewModel.error);
    } else {
      print('Posts loaded successfully:');
      viewModel.meals.forEach((meal) {
        print(
            'ID: ${meal.id},\n Name: ${meal.name},\n Category: ${meal.category},\n ThumbnailURL: ${meal.imageUrl}\n');
      });
    }
  });
}

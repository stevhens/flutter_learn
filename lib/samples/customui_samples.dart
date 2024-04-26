import 'package:flutter/material.dart';

void main() {
  runApp(MyCustomUIApp());
}

class MealItem {
  final String title;
  final String subtitle;
  final String mealImage;

  MealItem(
      {required this.title, required this.subtitle, required this.mealImage});
}

class MyCustomUIApp extends StatelessWidget {
  final List<MealItem> meals = [
    MealItem(title: "Grilled Salmon", subtitle: "Healthy and Delicious", mealImage: "assets/salmon_meal.jpg"),
    MealItem(title: "Roast Chicken", subtitle: "Smoky and Tasty", mealImage: "assets/chicken_meal.jpeg"),
    MealItem(title: "Pasta Carbonara", subtitle: "Creamy and Cheesy", mealImage: "assets/pasta_meal.jpeg")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom UI Example'),
        ),
        body: ListView.builder(
          itemCount: meals.length,
          itemBuilder: (context, index) {
            return MyStatefulItemCell(
              mealImage: meals[index].mealImage,
              title: meals[index].title,
              subtitle: meals[index].subtitle,
            );
          },
        ),
      ),
    );
  }
}

class MyStatefulItemCell extends StatelessWidget {
  final String mealImage;
  final String title;
  final String subtitle;

  const MyStatefulItemCell({
    Key? key,
    required this.mealImage,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Do somethin on Tap
      },
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade300)),
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                mealImage,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    subtitle,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
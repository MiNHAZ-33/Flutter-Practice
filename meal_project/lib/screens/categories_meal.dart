import 'package:flutter/material.dart';
import '../models/dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = '/category-meal';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemCount: categoryMeals.length,
        itemBuilder: (context, index) {
          return MealItem(title: categoryMeals[index].title, imageUrl: categoryMeals[index].imageUrl, duration: categoryMeals[index].duration, complexity: categoryMeals[index].complexity, affordability: categoryMeals[index].affordability);
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:meal_project/screens/meal_details_screen.dart';
import 'screens/catagories_screen.dart';
import 'screens/categories_meal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal App',
      debugShowCheckedModeBanner: false,
      home: CatagoriesScreen(),
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      routes: {
        CategoryMealScreen.routeName: (context) => CategoryMealScreen(),
        MealDetailsScreen.routeName: (context) => MealDetailsScreen(),
      },
    );
  }
}

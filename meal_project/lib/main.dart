import 'package:flutter/material.dart';
import 'package:meal_project/catagories_screen.dart';
import 'package:meal_project/categories_meal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

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
        CategoryMealScreen.routeName : (context) => CategoryMealScreen(),
      },
    );
  }
}
  
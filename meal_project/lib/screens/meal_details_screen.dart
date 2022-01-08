import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({Key? key}) : super(key: key);
  static const routeName = '/meal-details-screen';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text(mealId),
        centerTitle: true,
      ),
      body: Center(
        child: Text('This is the meal details screen'),
      ),
    );
  }
}

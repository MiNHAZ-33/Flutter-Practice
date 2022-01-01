import 'package:eshop_project/provider/product_provider.dart';
import 'package:eshop_project/screen/product_details_screen.dart';
import 'package:flutter/material.dart';
import './screen/product_Overview_project.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductOverviewScreen(),
        theme:
            ThemeData(primarySwatch: Colors.teal, accentColor: Colors.deepOrange),
        routes: {
          ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
        },
      ),
    );
  }
}

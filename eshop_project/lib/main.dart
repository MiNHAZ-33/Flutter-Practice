import 'package:eshop_project/provider/cart.dart';
import 'package:eshop_project/provider/orders.dart';
import 'package:eshop_project/provider/product_provider.dart';
import 'package:eshop_project/screen/cartscreen.dart';
import 'package:eshop_project/screen/oreder_screen.dart';
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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (context) => Products(),
        ),
        ChangeNotifierProvider(
        create: (context) => Cart(),
        ),
        ChangeNotifierProvider(
        create: (context) => Order(),
        ),
      ],
      
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: ProductOverviewScreen(),
          theme:
              ThemeData(primarySwatch: Colors.teal, accentColor: Colors.deepOrange),
          routes: {
            ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
            CartScreen.routeName: (context) => CartScreen(),
            OrdersScreen.routeName: (context) => OrdersScreen(),
          },
        ),
    );
  }
}

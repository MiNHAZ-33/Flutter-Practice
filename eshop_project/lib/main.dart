import 'package:eshop_project/provider/auth.dart';
import 'package:eshop_project/provider/cart.dart';
import 'package:eshop_project/provider/orders.dart';
import 'package:eshop_project/provider/product_provider.dart';
import 'package:eshop_project/screen/cartscreen.dart';
import 'package:eshop_project/screen/edit_product_screen.dart';
import 'package:eshop_project/screen/log_in_screen.dart';
import 'package:eshop_project/screen/oreder_screen.dart';
import 'package:eshop_project/screen/product_details_screen.dart';
import 'package:eshop_project/screen/user_product_screen.dart';
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
          create: (context) => Auth(),
        ),
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
      child: Consumer<Auth>(builder: (context, auth, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          //home: LogInScreen(),
          home: auth.isAuth ? ProductOverviewScreen() : AuthScreen(),
          theme: ThemeData(
              primarySwatch: Colors.teal, accentColor: Colors.deepOrange),
          routes: {
            ProductDetailsScreen.routeName: (context) => ProductDetailsScreen(),
            CartScreen.routeName: (context) => CartScreen(),
            OrdersScreen.routeName: (context) => OrdersScreen(),
            UserProductScreen.routeName: (context) => UserProductScreen(),
            EditProductScreen.routeName: (context) => EditProductScreen(),
          },
        );
      }),
    );
  }
}

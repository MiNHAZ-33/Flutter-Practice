import 'package:flutter/material.dart';
import 'package:practice_eshop/models/product_list.dart';
import 'package:provider/provider.dart';

import 'screens/overviewscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Eshopping App',
        home: ProductOverviewScreen(),
        theme: ThemeData(
          primaryColor: Colors.lime,
          accentColor: Colors.blueAccent,
        ),
        
      ),
    );
  }
}

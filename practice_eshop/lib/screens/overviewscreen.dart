import 'package:flutter/material.dart';
import '/widgets/itemsfromoverview.dart';
import '/widgets/drawer.dart';

class ProductOverviewScreen extends StatelessWidget {
  const ProductOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Shopify App!'),
          centerTitle: true,
        ),
        drawer: MyDrawer(),
        body: ItemsOfOverviewScreen());
  }
}

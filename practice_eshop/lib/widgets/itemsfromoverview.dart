import 'package:flutter/material.dart';
import 'package:practice_eshop/models/product_list.dart';
import '/models/product.dart';
import 'package:provider/provider.dart';

class ItemsOfOverviewScreen extends StatelessWidget {
  const ItemsOfOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Products>(context);
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
        itemCount: product.items.length,
        itemBuilder: (context, index) {
          return ChangeNotifierProvider.value(
            value: product.items[index],
            child: Image.network(product.items[index].imgURL),
          );
        });
  }
}

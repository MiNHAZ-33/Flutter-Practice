import 'package:eshop_project/provider/product.dart';
import 'package:eshop_project/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'product_item.dart';

class ProductGrid extends StatelessWidget {
  final bool showFavs;
  const ProductGrid(this.showFavs);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Products>(context);
    final products = showFavs ? product.getFavorites : product.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
        value: products[index],
        child: ProductItem(
            // title: loadedProduct[index].title,
            // imgURL: loadedProduct[index].imgURL,
            // id: loadedProduct[index].id
            ),
      ),
    );
  }
}

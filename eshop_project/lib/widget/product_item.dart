import 'package:eshop_project/provider/product.dart';
import 'package:provider/provider.dart';

import '/screen/product_details_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  // final String title;
  // final String imgURL;
  // final String id;

  // const ProductItem(
  //     {Key? key, required this.title, required this.imgURL, required this.id})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, );
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            ProductDetailsScreen.routeName,
            arguments: product.id,
          );
        },
        child: GridTile(
          child: Image.network(product.imgURL),
          footer: GridTileBar(
            backgroundColor: Colors.blueGrey.shade400,
            leading: IconButton(
              onPressed: () {
                product.toggleFavoritesStatus();
              },
              icon: product.isFav
                  ? Icon(Icons.favorite_outline)
                  : Icon(Icons.five_g_sharp),
              color: Theme.of(context).accentColor,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart),
              color: Theme.of(context).accentColor,
            ),
            title: Text(product.title),
          ),
        ),
      ),
    );
  }
}

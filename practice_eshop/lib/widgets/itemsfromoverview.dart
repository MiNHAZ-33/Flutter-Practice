import 'package:flutter/material.dart';
import 'package:practice_eshop/models/product_list.dart';
import '/models/product.dart';
import 'package:provider/provider.dart';

class ItemsOfOverviewScreen extends StatelessWidget {
  const ItemsOfOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return GridTile(
      child: Image.network(product.imgURL),
      footer: GridTileBar(
        backgroundColor: Colors.blueGrey.shade400,
        leading: IconButton(
          onPressed: () {
            // product.toggleFavoritesStatus();
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
    );
  }
}

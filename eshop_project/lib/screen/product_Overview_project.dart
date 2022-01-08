import 'package:eshop_project/provider/cart.dart';
import 'package:eshop_project/provider/product_provider.dart';
import 'package:eshop_project/screen/cartscreen.dart';
import 'package:eshop_project/widget/badge.dart';
import 'package:eshop_project/widget/product_grid.dart';
import 'package:provider/provider.dart';

import '/widget/appdrawer.dart';
import 'package:flutter/material.dart';
import '../provider/product.dart';
import '../widget/product_item.dart';

enum FilterOption {
  favorite,
  all,
}

class ProductOverviewScreen extends StatefulWidget {
  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  var _showFavOnly = false;
  var isInIt = true;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    if (isInIt) {
      Provider.of<Products>(context).fetchAndShowProducts();
    }
    isInIt = false;
    super.didChangeDependencies();
  }

  // const ProductOverviewScreen({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('E-Shoppers'),
        actions: [
          PopupMenuButton(
            onSelected: (selectedValue) {
              setState(() {
                if (selectedValue == FilterOption.favorite) {
                  _showFavOnly = true;
                } else {
                  _showFavOnly = false;
                }
              });
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Text('Only Favorites'),
                value: FilterOption.favorite,
              ),
              PopupMenuItem(
                child: Text('All'),
                value: FilterOption.all,
              ),
            ],
          ),
          Consumer<Cart>(
            builder: (context, cart, child) =>
                Badge(value: cart.itmCount, child: child as Widget),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(CartScreen.routeName);
                },
                icon: Icon(Icons.shopping_cart)),
          )
        ],
      ),
      drawer: const AppDrawer(),
      body: ProductGrid(_showFavOnly),
    );
  }
}

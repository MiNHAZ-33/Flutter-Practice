import 'package:eshop_project/widget/product_grid.dart';

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

  // const ProductOverviewScreen({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('E-Shoppers'),
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
        ],
      ),
      drawer: AppDrawer(),
      body: ProductGrid(_showFavOnly),
    );
  }
}

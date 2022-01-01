import 'package:eshop_project/provider/product.dart';
import '/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailsScreen extends StatelessWidget {
  // final String title;
  // final String imgURL;

  // const ProductDetailsScreen(
  //     {Key? key, required this.title, required this.imgURL})
  //     : super(key: key);

  static const routeName = 'product-details';

  @override
  Widget build(BuildContext context) {
    final productData = ModalRoute.of(context)!.settings.arguments as String;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productData);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: Image.network(
              loadedProduct.imgURL,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(loadedProduct.description),
          Text(loadedProduct.price.toString())
        ],
      ),
    );
  }
}

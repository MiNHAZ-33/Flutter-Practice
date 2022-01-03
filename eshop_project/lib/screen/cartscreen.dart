import 'package:eshop_project/provider/cart.dart';
import 'package:eshop_project/widget/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  static const routeName = '/cart-screen';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Cart'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Card(
            child: Row(
              children: [
                Text(
                  'Total',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Chip(
                  label: Text('BDT Price'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cart.itmCount,
              itemBuilder: (context, index) => CartsItem(
                id: cart.items.values.toList()[index].id,
                //productId: cart.items.keys.toList()[index],
                price: cart.items.values.toList()[index].price,
                quantity: cart.items.values.toList()[index].quantity,
                title: cart.items.values.toList()[index].title,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

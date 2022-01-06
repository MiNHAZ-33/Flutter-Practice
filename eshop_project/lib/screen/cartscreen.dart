import 'package:eshop_project/provider/cart.dart';
import 'package:eshop_project/provider/orders.dart';
import 'package:eshop_project/widget/appdrawer.dart';
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
      drawer: AppDrawer(),
      body: Column(
        children: [
          Card(
            child: Row(
              children: [
                Text(
                  'Total',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const Spacer(),
                Chip(
                  label: Text('${cart.totalAmount.toStringAsFixed(2)}'),
                ),
                const SizedBox(
                  width: 5,
                ),
                OutlineButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, CartScreen.routeName);
                    Provider.of<Order>(context, listen: false)
                        .addOrder(cart.items.values.toList(), cart.totalAmount);
                    cart.clear();
                  },
                  child: Text('Order Now'),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cart.itmCount,
              itemBuilder: (context, index) => CartsItem(
                id: cart.items.values.toList()[index].id,
                productId: cart.items.keys.toList()[index],
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

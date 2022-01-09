import 'package:final_project/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItemBuilder extends StatelessWidget {
  const CartItemBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Column(
      children: [
        Flexible(
          child: Container(
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.all(15),
            child: Card(
              child: Row(
                children: [
                  Text('Total :'),
                  Spacer(),
                  Chip(
                    label: Text(
                      cart.totalAmount.toString(),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Order Now',
                    ),
                  ),
                  Flexible(
                    child: ListView.builder(
                      itemCount: cart.itmCount,
                      itemBuilder: (context, index) => Card(
                        child: Container(
                          child: Row(
                            children: [
                              Text(cart.items.values.toList()[index].title),
                              Text(
                                cart.items.values
                                    .toList()[index]
                                    .price
                                    .toString(),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //ListTile(

                      //subtitle: Text(cart.items.values.toList()[index].),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

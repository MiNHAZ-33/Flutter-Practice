import 'package:final_project/provider/cart.dart';
import 'package:final_project/provider/order.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  static const routeName = '/order-screen';
  @override
  Widget build(BuildContext context) {
    final order = Provider.of<Order>(context, listen: false).item;
    final amount = Provider.of<Cart>(context, listen: false).totalAmount;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        title: Text(
          'Your Orders',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: order.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(order[index].tickets[index].title),
                      Text(order[index].tickets[index].price.toString()),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  );
                },
              ),
            ),
            Text(
              amount.toString() + ' hdaskjfhka',
            ),
          ],
        ),
      ),
    );
  }
}

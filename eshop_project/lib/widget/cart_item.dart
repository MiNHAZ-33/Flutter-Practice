import 'package:eshop_project/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartsItem extends StatelessWidget {
  final String id;
  final String productId;
  final double price;
  final int quantity;
  final String title;

  const CartsItem(
      {Key? key,
      required this.id,
      required this.productId,
      required this.price,
      required this.quantity,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        child: Icon(Icons.delete),
      ),
      confirmDismiss: (direction) => showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text('Are you sure you want to delete?'),
                actions: [
                  OutlineButton(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: Text('Yes'),
                  ),
                  OutlineButton(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: Text('No'),
                  ),
                ],
              )),
      key: ValueKey(id),
      onDismissed: (direction) =>
          Provider.of<Cart>(context, listen: false).removeCart(productId),
      child: Card(
        // child: ListTile(
        //   title: Text(title),
        //   subtitle: Text('Total: BDT $price'),
        //   trailing: Text('$quantity x'),
        // ),
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text(title),
            ),
            Container(
              child: Text('Total : BDT $price '),
            ),
            Container(
              child: Text('$quantity x'),
            ),
          ],
        ),
      ),
    );
  }
}

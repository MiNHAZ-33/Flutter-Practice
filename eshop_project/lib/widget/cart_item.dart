import 'package:flutter/material.dart';

class CartsItem extends StatelessWidget {
  final String id;
 // final String productId;
  final double price;
  final int quantity;
  final String title;

  const CartsItem(
      {Key? key,
      required this.id,
      //required this.productId,
      required this.price,
      required this.quantity,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      child: Card(
        child: ListTile(
          title: Text(title),
          subtitle: Text('Total: BDT $price'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}

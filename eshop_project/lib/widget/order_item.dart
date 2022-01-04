import 'package:eshop_project/provider/orders.dart';
import 'package:eshop_project/widget/appdrawer.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class OrdersItems extends StatelessWidget {
  final OrderItems orders;
  const OrdersItems({Key? key, required this.orders}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      child: ListTile(
        title: Text('BDT ${orders.amount}'),
        subtitle: Text(
          DateFormat('dd/mm/yyyy hh:mm').toString(),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.expand_more),
        ),
      ),
    );
  }
}

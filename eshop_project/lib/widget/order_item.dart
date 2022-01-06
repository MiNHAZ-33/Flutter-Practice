import 'package:eshop_project/provider/orders.dart';
import 'package:eshop_project/widget/appdrawer.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class OrdersItems extends StatefulWidget {
  final OrderItems orders;
  const OrdersItems({Key? key, required this.orders}) : super(key: key);

  @override
  State<OrdersItems> createState() => _OrdersItemsState();
}

class _OrdersItemsState extends State<OrdersItems> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      child: Column(
        children: [
          ListTile(
            title: Text('BDT ${widget.orders.amount}'),
            subtitle: Text(
              DateFormat('dd/mm/yyyy hh:mm')
                  .format(widget.orders.time)
                  .toString(),
            ),
            trailing: IconButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              icon: Icon(isExpanded ? Icons.expand_more : Icons.expand_less),
            ),
          ),
          if (isExpanded)
            Container(
              height: 100,
              padding: EdgeInsets.symmetric(vertical: 2, horizontal: 15),
              child: ListView(
                  children: widget.orders.products
                      .map(
                        (e) => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(e.title),
                              Text('${e.quantity} x'),
                              Text(e.price.toString())
                            ]),
                      )
                      .toList()),
            ),
        ],
      ),
    );
  }
}

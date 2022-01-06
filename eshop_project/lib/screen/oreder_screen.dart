import 'package:eshop_project/provider/orders.dart';
import 'package:eshop_project/widget/appdrawer.dart';
import 'package:eshop_project/widget/order_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);
  static const routeName = '/order-screen';

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Order>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('Your orders'),
          centerTitle: true,
        ),
        drawer: AppDrawer(),
        body: ListView.builder(
            itemCount: orderData.item.length,
            itemBuilder: (context, index) =>
                OrdersItems(orders: orderData.item[index])));
  }
}

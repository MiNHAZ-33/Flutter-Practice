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
    return Scaffold(
      appBar: AppBar(
        title: Text('Your orders'),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: FutureBuilder(
        future: Provider.of<Order>(context, listen: false).fetchAndShowOrders(),
        builder: (context, orderSnapShot) {
          if (orderSnapShot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (orderSnapShot.error != null) {
            return Center(
              child: Column(
                children: [
                  Icon(
                    Icons.info,
                    color: Theme.of(context).errorColor,
                  ),
                  Text('Error occured'),
                ],
              ),
            );
          } else {
            return Consumer<Order>(
              builder: (context, orderData, _) => orderData.item.isEmpty
                  ? Center(
                      child: Column(
                        children: [
                          Icon(
                            Icons.info,
                            color: Theme.of(context).errorColor,
                          ),
                          Text('No order found!'),
                        ],
                      ),
                    )
                  : ListView.builder(
                      itemCount: orderData.item.length,
                      itemBuilder: (context, index) => OrdersItems(
                        orders: orderData.item[index],
                      ),
                    ),
            );
          }
        },
      ),
    );
  }
}

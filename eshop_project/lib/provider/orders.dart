import 'package:eshop_project/provider/cart.dart';
import 'package:flutter/cupertino.dart';

class OrderItems {
  final String id;
  final double amount;
  final List<CartItem> products;
  final DateTime time;

  OrderItems(
      {required this.id,
      required this.amount,
      required this.products,
      required this.time});
}

class Order with ChangeNotifier {
  List<OrderItems> _item = [];

  List<OrderItems> get item {
    return [..._item];
  }

  void addOrder(List<CartItem> cartlist, double total) {
    _item.insert(
      0,
      OrderItems(
        id: DateTime.now().toString(),
        amount: total,
        products: cartlist,
        time: DateTime.now(),
      ),
    );
    notifyListeners();
  }
}

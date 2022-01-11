import 'package:final_project/provider/cart.dart';
import 'package:flutter/cupertino.dart';

class OrderedTickets {
  final String id;
  final int amount;
  final List<CartItem> tickets;
  final DateTime time;

  OrderedTickets(
      {required this.id,
      required this.amount,
      required this.tickets,
      required this.time});
}

class Order with ChangeNotifier {
  List<OrderedTickets> _item = [];

  List<OrderedTickets> get item {
    return [..._item];
  }

  void addOrder(List<CartItem> cartList, int total) {
    //   _item.insert(
    //     0,
    //     OrderedTickets(
    //       id: DateTime.now().toString(),
    //       amount: total,
    //       tickets: cartList,
    //       time: DateTime.now(),
    //     ),
    //   );
    //   notifyListeners();
    // }
    
  }
}

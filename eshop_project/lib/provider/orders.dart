import 'dart:convert';

import 'package:eshop_project/provider/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

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

  Future<void> addOrder(List<CartItem> cartlist, double total) async {
    final url =
        'https://shop-971ce-default-rtdb.firebaseio.com/' + 'order.json';
    final timeStamp = DateTime.now();

    try {
      final response = await http.post(Uri.parse(url),
          body: json.encode({
            'totalAmount': total,
            'orderTime': timeStamp.toIso8601String(),
            'product': cartlist
                .map((e) => {
                      'id': e.id,
                      'amount': e.price,
                      'prodTitle': e.title,
                      'productQuantity': e.quantity
                    })
                .toList(),
          }));
      _item.insert(
        0,
        OrderItems(
          id: json.decode(response.body)['name'],
          amount: total,
          products: cartlist,
          time: timeStamp,
        ),
      );
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}

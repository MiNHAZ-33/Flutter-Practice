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

  Future<void> fetchAndShowOrders() async {
    final url =
        'https://shop-971ce-default-rtdb.firebaseio.com/' + 'order.json';
    final timeStamp = DateTime.now();

    try {
      final response = await http.get(Uri.parse(url));
      final List<OrderItems> loadedOrder = [];
      final decodedData = json.decode(response.body) as Map<String, dynamic>?;
      if (decodedData == null) {
        return;
      }
      decodedData.forEach((orderId, orderValue) {
        loadedOrder.add(
          OrderItems(
            id: orderId,
            amount: orderValue['totalAmount'],
            time: DateTime.parse(orderValue['orderTime']),
            products: (orderValue['product'] as List<dynamic>)
                .map((e) => CartItem(
                    id: e['id'],
                    title: e['prodTitle'],
                    price: e['amount'],
                    quantity: e['productQuantity']))
                .toList(),
          ),
        );
      });
      _item = loadedOrder;
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }
}

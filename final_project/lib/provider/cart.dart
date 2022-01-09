import 'package:flutter/cupertino.dart';

class CartItem {
  final String id;
  final String title;
  final int price;

  CartItem({
    required this.id,
    required this.title,
    required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get itmCount {
    return _items.length;
  }

  int get totalAmount {
    int total = 0;
    _items.forEach((key, value) {
      total += value.price;
    });
    return total;
  }

  void addItem(String productId, int price, String title) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (value) => CartItem(id: productId, price: price, title: title),
      );
    } else {
      _items.putIfAbsent(
        productId,
        () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          price: price,
        ),
      );
    }
    notifyListeners();
  }
}
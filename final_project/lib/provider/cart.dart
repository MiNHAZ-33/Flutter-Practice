import 'package:flutter/cupertino.dart';

class CartItem {
  final String id;
  final String title;
  final int price;
  final String imageUrl;

  CartItem({
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl,
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

  void addItem(String productId, int price, String title, String imageUrl) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (value) => CartItem(
            id: productId, price: price, title: title, imageUrl: imageUrl),
      );
    } else {
      _items.putIfAbsent(
        productId,
        () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          price: price,
          imageUrl: imageUrl,
        ),
      );
    }
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }
}

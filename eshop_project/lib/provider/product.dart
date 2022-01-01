import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final double price;
  final String imgURL;
  bool isFav;
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.imgURL,
    this.isFav = false,
  });

  void toggleFavoritesStatus() {
    isFav = !isFav;
    notifyListeners();
  }
}

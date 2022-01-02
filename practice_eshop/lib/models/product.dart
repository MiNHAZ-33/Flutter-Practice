import 'package:flutter/cupertino.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;
  final String description;
  final String price;
  final String imgURL;
  final bool isFav;

  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imgURL,
      this.isFav = false});
}

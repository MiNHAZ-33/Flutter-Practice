import 'package:flutter/cupertino.dart';

import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _p_list = [
    Product(
        id: '01',
        title: 'Camera',
        description: 'This is a genuine product',
        imgURL:
            'https://images.unsplash.com/photo-1491796014055-e6835cdcd4c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=478&q=80',
        price: '40000'),
    Product(
        id: '02',
        title: 'Headphone',
        description: 'Long Lasting pieces',
        price: '1000',
        imgURL:
            'https://images.unsplash.com/photo-1613040809024-b4ef7ba99bc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'),
  ];

  List<Product> get items {
    return [..._p_list];
  }
}

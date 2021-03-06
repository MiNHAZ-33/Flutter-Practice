import 'dart:convert';

import 'package:eshop_project/provider/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Products with ChangeNotifier {
  List<Product> _items = [
    // Product(
    //   id: 'p1',
    //   title: 'Watch',
    //   description: 'description_1',
    //   price: 18,
    //   imgURL:
    //       'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    // ),
    // Product(
    //   id: 'p2',
    //   title: 'headphoone',
    //   description: 'description',
    //   price: 10,
    //   imgURL:
    //       'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    // ),
    // Product(
    //   id: 'p3',
    //   title: 'camera',
    //   description: 'description',
    //   price: 10,
    //   imgURL:
    //       'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZHVjdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    // ),
    // Product(
    //   id: 'p4',
    //   title: 'shoee',
    //   description: 'description',
    //   price: 10,
    //   imgURL:
    //       'https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZHVjdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    // ),
    // Product(
    //     id: 'p5',
    //     title: 'shoee',
    //     description: 'description',
    //     price: 10,
    //     imgURL:
    //         'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2R1Y3R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(String id) {
    return _items.firstWhere((element) => element.id == id);
  }

  List<Product> get getFavorites {
    return _items.where((element) => element.isFav).toList();
  }

  //delete product from Manage Product
  Future<void> deleteProduct(String id) async {
    final alreadyMadeProduct = _items.indexWhere((element) => element.id == id);

    final url =
        'https://shop-971ce-default-rtdb.firebaseio.com/product/$id.json';

    await http.delete(Uri.parse(url));

    _items.removeAt(alreadyMadeProduct);
    notifyListeners();
  }

  Future<void> addProduct(Product addedProducts) async {
    try {
      final url =
          'https://shop-971ce-default-rtdb.firebaseio.com/' + 'product.json';

      final response = await http.post(
        Uri.parse(url),
        body: json.encode({
          'title': addedProducts.title,
          'description': addedProducts.description,
          'price': addedProducts.price,
          'imageUrl': addedProducts.imgURL,
        }),
      );

      final addedProd = Product(
          id: DateTime.now().toString(),
          title: addedProducts.title,
          description: addedProducts.description,
          price: addedProducts.price,
          imgURL: addedProducts.imgURL);
      _items.add(addedProd);
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> editProduct(String id, Product editedProd) async {
    final prodIndex = _items.indexWhere((element) => element.id == id);
    final url =
        'https://shop-971ce-default-rtdb.firebaseio.com/product/$id.json';
    try {
      final response = await http.put(Uri.parse(url),
          body: json.encode({
            'title': editedProd.title,
            'description': editedProd.description,
            'price': editedProd.price,
            'imageUrl': editedProd.imgURL,
          }));
      _items[prodIndex] = editedProd;
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }

  Future<void> fetchAndShowProducts() async {
    try {
      final url =
          'https://shop-971ce-default-rtdb.firebaseio.com/' + 'product.json';

      final response = await http.get(Uri.parse(url) );
      final fetchData = json.decode(response.body);
      final List<Product> loadedData = [];

      if (fetchData == null) {
        return;
      }
      fetchData.forEach((productId, productVal) {
        loadedData.add(
          Product(
            id: productId,
            title: productVal['title'],
            description: productVal['description'],
            price: productVal['price'] as double,
            imgURL: productVal['imageUrl'],
          ),
        );
      });
      _items = loadedData;
      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }
}

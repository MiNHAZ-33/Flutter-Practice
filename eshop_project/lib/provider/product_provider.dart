import 'package:eshop_project/provider/product.dart';
import 'package:flutter/cupertino.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Watch',
      description: 'description_1',
      price: 18,
      imgURL:
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: 'p2',
      title: 'headphoone',
      description: 'description',
      price: 10,
      imgURL:
          'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: 'p3',
      title: 'camera',
      description: 'description',
      price: 10,
      imgURL:
          'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZHVjdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
      id: 'p4',
      title: 'shoee',
      description: 'description',
      price: 10,
      imgURL:
          'https://images.unsplash.com/photo-1491553895911-0055eca6402d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZHVjdHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    ),
    Product(
        id: 'p5',
        title: 'shoee',
        description: 'description',
        price: 10,
        imgURL:
            'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHByb2R1Y3R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60')
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
  void deleteProduct(String id) {
    final alreadyMadeProduct = _items.indexWhere((element) => element.id == id);
    _items.removeAt(alreadyMadeProduct);
    notifyListeners();
  }

  void addProduct(Product addedProducts) {
    final addedProd = Product(
        id: DateTime.now().toString(),
        title: addedProducts.title,
        description: addedProducts.description,
        price: addedProducts.price,
        imgURL: addedProducts.imgURL);

    _items.add(addedProd);
    notifyListeners();
  }

  void editProduct(String id, Product editedProd) {
    final prodIndex = _items.indexWhere((element) => element.id == id);

    _items[prodIndex] = editedProd;
    notifyListeners();
  }
}

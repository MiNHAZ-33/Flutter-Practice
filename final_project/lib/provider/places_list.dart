import 'package:flutter/cupertino.dart';

import 'places_model.dart';
import 'package:provider/provider.dart';

class PlacesList with ChangeNotifier {
  List<Places> places = [
    Places(
        id: '01',
        title: 'New York',
        price: 7000,
        imageUrl:
            'https://images.unsplash.com/photo-1485738422979-f5c462d49f74?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1199&q=80',
        duration: 7),
    Places(
        id: '02',
        title: 'Paris',
        price: 9000,
        imageUrl:
            'https://images.unsplash.com/photo-1431274172761-fca41d930114?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
        duration: 8),
  ];

  Places findById(String id) {
    return places.firstWhere((element) => element.id == id);
  }
}

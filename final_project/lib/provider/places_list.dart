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
    Places(
        id: '03',
        title: 'Mumbai',
        imageUrl:
            'https://images.unsplash.com/photo-1529253355930-ddbe423a2ac7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80',
        duration: 10,
        price: 10000),
    Places(
        id: '04',
        title: 'Sydney',
        imageUrl:
            'https://images.unsplash.com/photo-1551352912-484163ad5be9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
        duration: 15,
        price: 90000),
    Places(
        id: '05',
        title: 'Dubai',
        imageUrl:
            'https://images.unsplash.com/flagged/photo-1559717865-a99cac1c95d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2071&q=80',
        duration: 10,
        price: 80000),
    Places(
        id: '06',
        title: 'Kashmir',
        imageUrl:
            'https://images.unsplash.com/photo-1614591276564-7b3e69347a48?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2074&q=80',
        duration: 10,
        price: 20000),
    Places(
        id: '07',
        title: 'Venice',
        imageUrl:
            'https://images.unsplash.com/photo-1453747063559-36695c8771bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        duration: 15,
        price: 45000),
  ];

  Places findById(String id) {
    return places.firstWhere((element) => element.id == id);
  }
}

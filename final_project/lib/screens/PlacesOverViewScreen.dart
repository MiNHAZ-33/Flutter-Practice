import 'package:final_project/provider/cart.dart';
import 'package:final_project/provider/places_list.dart';
import 'package:final_project/screens/cart_screen.dart';
import '/widgets/card_builder.dart';
import 'package:provider/provider.dart';

import '../widgets/appdrawer.dart';
import 'package:flutter/material.dart';

class PlacesOverViewScreen extends StatelessWidget {
  PlacesOverViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesList = Provider.of<PlacesList>(context).places;
    final cart = Provider.of<Cart>(context).items;
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        title: Text(
          'Go - Fly',
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: placesList.length,
        itemBuilder: (context, index) => CardBuilder(
          index: index,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(CartScreen.routeName);
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.shopping_cart,
          color: Colors.white,
        ),
      ),
    );
  }
}

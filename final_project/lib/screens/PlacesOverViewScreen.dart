import 'package:final_project/provider/places_list.dart';
import '/widgets/card_builder.dart';
import 'package:provider/provider.dart';

import '../widgets/appdrawer.dart';
import 'package:flutter/material.dart';

class PlacesOverViewScreen extends StatelessWidget {
  const PlacesOverViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesList = Provider.of<PlacesList>(context).places;
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
              )),
    );
  }
}
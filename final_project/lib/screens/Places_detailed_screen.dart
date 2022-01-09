import 'package:final_project/provider/places_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlacesDetailedScreen extends StatelessWidget {
  const PlacesDetailedScreen({Key? key}) : super(key: key);

  static const routeName = '/places-details';

  @override
  Widget build(BuildContext context) {
    final detailed_id = ModalRoute.of(context)!.settings.arguments as String;
    final details = Provider.of<PlacesList>(context).findById(detailed_id);

    return Scaffold(
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
      body: Container(
        child: Image.network(details.imageUrl),
      ),
    );
  }
}

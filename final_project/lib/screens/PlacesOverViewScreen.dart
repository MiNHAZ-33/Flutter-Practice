import '../widgets/appdrawer.dart';
import 'package:flutter/material.dart';

class PlacesOverViewScreen extends StatelessWidget {
  const PlacesOverViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            'Go - Fly',
            style: Theme.of(context).textTheme.headline1,
          ),
          centerTitle: true,
        ),
        drawer: const AppDrawer(),
        body: ListView.builder(itemBuilder: (context, index)=>)
        );
  }
}

import 'package:final_project/screens/Places_detailed_screen.dart';

import '/provider/places_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardBuilder extends StatelessWidget {
  final index;
  const CardBuilder({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final placesList = Provider.of<PlacesList>(context).places;
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(PlacesDetailedScreen.routeName,
            arguments: placesList[index].id);
      },
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).accentColor,
      child: Card(
        margin: EdgeInsets.all(20),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.network(
                placesList[index].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(placesList[index].title),
                  Container(
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.timer),
                          Text(
                            placesList[index].duration.toString() + ' Days',
                          ),
                        ],
                      )),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.favorite),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.shop),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

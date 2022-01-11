import 'package:final_project/provider/cart.dart';
import 'package:final_project/screens/Places_detailed_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '/provider/places_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardBuilder extends StatefulWidget {
  final index;
  CardBuilder({Key? key, required this.index}) : super(key: key);

  @override
  State<CardBuilder> createState() => _CardBuilderState();
}

class _CardBuilderState extends State<CardBuilder> {
  var isAdded = false;

  @override
  Widget build(BuildContext context) {
    final placesList = Provider.of<PlacesList>(context).places;
    final cart = Provider.of<Cart>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(PlacesDetailedScreen.routeName,
            arguments: placesList[widget.index].id);
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
                placesList[widget.index].imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    placesList[widget.index].title,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Container(
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.timer),
                        Text(
                          placesList[widget.index].duration.toString() +
                              ' Days',
                          // style: Theme.of(context).textTheme.headline4,
                          style: GoogleFonts.oxygen(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    placesList[widget.index].price.toString() + ' BDT',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  IconButton(
                    onPressed: () {
                      cart.addItem(
                        placesList[widget.index].id,
                        placesList[widget.index].price,
                        placesList[widget.index].title,
                        placesList[widget.index].imageUrl,
                      );

                      setState(() {
                        isAdded = !isAdded;
                      });
                    },
                    icon: isAdded
                        ? Icon(Icons.done_outline_outlined)
                        : Icon(Icons.shop),
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

import 'package:final_project/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartItemBuilder extends StatelessWidget {
  const CartItemBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Column(
      children: [
        Flexible(
          child: GridView.builder(
            itemCount: cart.itmCount,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) => Container(
              //height: MediaQuery.of(context).size.height * 0.3,
              height: 100,

              width: MediaQuery.of(context).size.width * 0.3,
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.all(15),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(
                          cart.items.values.toList()[index].imageUrl,
                        ),
                        fit: BoxFit.fill),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Text(cart.items.values.toList()[index].title),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(cart.items.values.toList()[index].title,
                            style: Theme.of(context).textTheme.headline2),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Chip(
                          label: Text(
                              cart.items.values
                                  .toList()[index]
                                  .price
                                  .toString(),
                              style: Theme.of(context).textTheme.headline2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.8,
          margin: EdgeInsets.all(5),
          padding: EdgeInsets.all(15),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text('Total :',
                      style: Theme.of(context).textTheme.headline2),
                ),
                Spacer(),
                Chip(
                  label: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      cart.totalAmount.toString(),
                      style: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        //fixedSize: const Size(300, 100),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {},
                    child: Text(
                      'Confirm',
                      style:
                          GoogleFonts.lato(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

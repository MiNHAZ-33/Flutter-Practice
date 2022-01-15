import 'dart:io';

import '/screens/PlacesOverViewScreen.dart';
import '/screens/cart_screen.dart';
import '/screens/order_screen.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffF9EAFF),
      child: ListView(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            height: 50,
            child: Center(
              child: Text(
                'Trippy-Fy',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text('Browse Places',
                style: Theme.of(context).textTheme.headline3),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PlacesOverViewScreen(),
                ),
              );
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.airplane_ticket),
            title: Text('Ordered Tickets',
                style: Theme.of(context).textTheme.headline3),
            onTap: () {
              Navigator.of(context).pushNamed(CartScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.airplanemode_active),
            title:
                Text('Payment', style: Theme.of(context).textTheme.headline3),
            onTap: () {
              Navigator.of(context).pushNamed(OrderScreen.routeName);
            },
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Exit', style: Theme.of(context).textTheme.headline3),
            onTap: () {
              exit(0);
            },
          ),
          const Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

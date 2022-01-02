import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        AppBar(
          automaticallyImplyLeading: false,
          title: Text('Hello Shoppers'),
          centerTitle: true,
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.shop),
          title: Text('Show in carts'),
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('LogOut'),
        ),
      ]),
    );
  }
}

import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
      children: [
        // UserAccountsDrawerHeader(
        //   accountName: Text('PabnaHUT'),
        //   accountEmail: Text('Pabnahut@gmail.com'),
        //   currentAccountPicture: Image.asset('assets/logo.png'),
        //   decoration: BoxDecoration(
        //     color: Colors.cyan,
        //   ),
        // ),
        AppBar(
          automaticallyImplyLeading: false,
          title: Text('Hello E-Shoppers'),
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.shop,
            color: Theme.of(context).accentColor,
          ),
          title: Text('SHop'),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.account_balance_wallet,
            color: Theme.of(context).accentColor,
          ),
          title: Text('Orders'),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.production_quantity_limits,
            color: Theme.of(context).accentColor,
          ),
          title: Text('Manage Product'),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.edit,
            color: Theme.of(context).accentColor,
          ),
          title: Text('Buttton'),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          leading: Icon(
            Icons.exit_to_app,
            color: Theme.of(context).accentColor,
          ),
          title: Text('Log Out'),
          onTap: () {},
        ),
        // Divider(),
        // ListTile(
        //   title: Text('Grid View'),
        //   onTap: () {},
        // ),
        // Divider(),
        // ListTile(
        //   title: Text('Contact Numbers'),
        //   onTap: () {},
        // ),
        // Divider(),
        // ListTile(
        //   title: Text('Tab Bar View'),
        //   onTap: () {},
        // ),
        // ListTile(
        //   title: Text('Text Animations'),
        //   onTap: () {},
        // ),
      ],
    ));
  }
}

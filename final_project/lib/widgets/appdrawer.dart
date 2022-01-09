import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundColor: Color(0xffC887FF),
      backgroundColor: Color(0xffF9EAFF),
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text('Browse Places',
                style: Theme.of(context).textTheme.headline3),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.airplane_ticket),
            title: Text('Ordered Tickets',
                style: Theme.of(context).textTheme.headline3),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.airplanemode_active),
            title: Text('Manage Tickets',
                style: Theme.of(context).textTheme.headline3),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title:
                Text('Log Out', style: Theme.of(context).textTheme.headline3),
            onTap: () {},
          ),
          const Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}

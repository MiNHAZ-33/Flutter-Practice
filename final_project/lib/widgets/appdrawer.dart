import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffC887FF),
      
      child: ListView(
        
        children: [
          ListTile(
            leading: Icon(Icons.landscape),
            title: Text('Browse Places'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.airplane_ticket),
            title: Text('Ordered Tickets'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.airplanemode_active),
            title: Text('Manage Tickets'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () {},
          ),
          const Divider(),
        ],
      ),
    );
  }
}

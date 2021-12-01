import 'package:flutter/material.dart';

class MenuItem {
  String itemName;
  IconData icn;
  Color icolor;

  MenuItem(
    {
      required this.itemName,
      required this.icn,
      required this.icolor
    }
  );
}

List<MenuItem> selectedItem = [
  MenuItem(itemName: 'Privacy Policy',
  icn: Icons.privacy_tip,
  icolor: Colors.green ),
  
  MenuItem(itemName: 'About app',
  icn: Icons.details,
  icolor: Colors.greenAccent),

  MenuItem(itemName: 'Settings', 
  icn: Icons.settings_applications,
  icolor: Colors.redAccent),
];
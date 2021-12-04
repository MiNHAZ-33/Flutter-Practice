import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropItem{
  String itemName;
  IconData icn;
  Color clr;

  DropItem({
    required this.itemName,
    required this.icn,
    required this.clr,
  }
  );
}


List<DropItem> dropDownList=[
  DropItem(itemName: 'Flutter', icn: Icons.home,clr: Colors.cyanAccent),
  DropItem(itemName: 'Dart', icn: Icons.ac_unit_sharp,clr: Colors.blueAccent),
  DropItem(itemName: 'Vs COde', icn: Icons.one_x_mobiledata_sharp,clr: Colors.deepOrange),
  DropItem(itemName: 'Android Studio', icn: Icons.threesixty,clr: Colors.amberAccent),
];
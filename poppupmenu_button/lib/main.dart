import 'package:flutter/material.dart';
import './item_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PopUp Menu',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuItem items = selectedItem[0];
  Color x = Colors.lightBlueAccent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: items.icolor,
        title: Text('This is the app bar'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return selectedItem.map((MenuItem thisitem) {
                return PopupMenuItem(
                  onTap: () {
                    setState(() {
                      items.icolor = thisitem.icolor;
                    });
                  },
                  value: thisitem,
                  child: Row(
                    children: [
                      Text(thisitem.itemName),
                      Icon(
                        thisitem.icn,
                        color: thisitem.icolor,
                      ),
                    ],
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dropitem.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'fwlg',
      home: DrpDwnApp(),
    );
  }
}

class DrpDwnApp extends StatefulWidget {
  const DrpDwnApp({Key? key}) : super(key: key);

  @override
  _DrpDwnAppState createState() => _DrpDwnAppState();
}

class _DrpDwnAppState extends State<DrpDwnApp> {

  DropItem items=dropDownList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down app Bar'),
      ),
      body: Center(
        child: DropdownButton(
          borderRadius: BorderRadius.circular(10),
          dropdownColor: Colors.amberAccent,
          value: items,
          items:
        dropDownList.map((e) => DropdownMenuItem(
          value: e,
            child: Column(children: [
              Text(
                  e.itemName
              ),
              Icon(e.icn,color: e.clr,),
          ],
            )
        ),
        ).toList(),
          onChanged: (val){
            setState(() {
              items=val as DropItem;
            });
          },
        ),
      )
    );
  }
}

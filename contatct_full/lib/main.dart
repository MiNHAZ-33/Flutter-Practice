import 'package:contatct_full/datas.dart';
import 'package:contatct_full/homepage.dart';
import 'package:contatct_full/messages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
    // routes: {'/messages': (context) => Messages()});
  }
}

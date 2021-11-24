import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoApp(
            home: CupertinoPageScaffold(
              child: AppBar(
                title: Text('This is cupertino app bar'),
              ),
            ),
          )
        : MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                title: Text('This is the Material app bar'),
              ),
            ),
          );
  }
}

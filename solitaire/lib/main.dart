import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solitaire',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Solitaire',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            child: Container(
              height: 400,
              width: 200,
              child: Card(
                elevation: 10,
                color: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
            child: Container(
              height: 400,
              width: 200,
              child: Card(
                elevation: 10,
                color: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            child: Container(
              height: 400,
              width: 200,
              child: Card(
                elevation: 10,
                color: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 140,
            child: Container(
              height: 400,
              width: 200,
              child: Card(
                elevation: 10,
                color: Colors.pinkAccent,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

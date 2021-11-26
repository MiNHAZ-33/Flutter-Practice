import 'package:flutter/material.dart';
import 'homepage.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoodBook',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: LogInPage(),
      routes: {
        '/login': (context) => LogInPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}

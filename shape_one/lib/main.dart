import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shape One',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
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
      backgroundColor: Colors.black12,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Choose the cards from below',
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: CardMaker(),
    );
  }
}

class CardMaker extends StatelessWidget {
  CardMaker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(crossAxisCount: 2, children: [
      cardMaker(icon: Icons.home, title: 'Home Bill', amount: 70),
      cardMaker(icon: Icons.home, title: 'Home Bill', amount: 70),
      cardMaker(icon: Icons.home, title: 'Home Bill', amount: 70),
      cardMaker(icon: Icons.home, title: 'Home Bill', amount: 70),
      cardMaker(icon: Icons.home, title: 'Home Bill', amount: 70),
      cardMaker(icon: Icons.home, title: 'Home Bill', amount: 70),
    ]);
  }

  Widget cardMaker(
      {required IconData icon, required String title, required double amount}) {
    return Card(
      elevation: 20,
      color: Colors.white,
      shadowColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 40,
            ),
            Text(title, style: TextStyle(color: Colors.black87, fontSize: 24)),
            Text(
              amount.toString(),
              style: TextStyle(color: Colors.black87, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}

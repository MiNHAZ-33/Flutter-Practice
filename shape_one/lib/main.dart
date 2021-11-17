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
      appBar: AppBar(
        title: Text(
          'Choose the cards from below',
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.white60,
      ),
      body: CardMaker(),
    );
  }
}

class CardMaker extends StatelessWidget {
  CardMaker({Key? key}) : super(key: key);

  final List<AllData> allData = [
    AllData(ic: Icons.home, lab: 'Hello', am: 888),
    AllData(ic: Icons.home, lab: 'Hello', am: 888),
    AllData(ic: Icons.home, lab: 'Hello', am: 888),
    AllData(ic: Icons.home, lab: 'Hello', am: 888),
    AllData(ic: Icons.home, lab: 'Hello', am: 888),
    AllData(ic: Icons.home, lab: 'Hello', am: 888),
    AllData(ic: Icons.home, lab: 'Hello', am: 888),
    AllData(ic: Icons.home, lab: 'Hello', am: 888),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: allData.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, int index) {
        return Column(
            children: allData
                .map(
                  (e) => cardMaker(icon: e.ic, title: e.lab, amount: e.am),
                )
                .toList());
      },
    );
  }
}

Widget cardMaker(
    {required IconData icon, required String title, required double amount}) {
  return Card(
    elevation: 20,
    color: Colors.pinkAccent,
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
            color: Colors.white,
            size: 40,
          ),
          Text(title, style: TextStyle(color: Colors.white, fontSize: 24)),
          Text(
            amount.toString(),
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ],
      ),
    ),
  );
}

class AllData {
  IconData ic;
  String lab;
  double am;

  AllData({
    required this.ic,
    required this.lab,
    required this.am,
  });
}

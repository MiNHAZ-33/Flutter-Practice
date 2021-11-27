import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cardMaker_1(),
                cardMaker(),
                cardMaker(),
                cardMaker(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                cardMaker_1(),
                Stack(
                  children: [
                    Container(child: cardMaker()),
                    Positioned(top: 30, child: cardMaker_1()),
                  ],
                ),
                Stack(
                  children: [
                    Container(child: cardMaker()),
                    Positioned(top: 30, child: cardMaker()),
                    Positioned(top: 60, child: cardMaker_1()),
                  ],
                ),
                Stack(
                  children: [
                    Container(child: cardMaker()),
                    Positioned(top: 30, child: cardMaker()),
                    Positioned(top: 60, child: cardMaker()),
                    Positioned(top: 90, child: cardMaker_1()),
                  ],
                ),
                Stack(
                  children: [
                    Container(child: cardMaker()),
                    Positioned(top: 30, child: cardMaker()),
                    Positioned(top: 60, child: cardMaker()),
                    Positioned(top: 90, child: cardMaker()),
                    Positioned(top: 120, child: cardMaker_1()),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget cardMaker() {
    return Container(
      height: 400,
      width: 200,
      child: Card(
        elevation: 10,
        color: Color(0xff151B54),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 3),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }

  Widget cardMaker_1() {
    return Container(
      height: 400,
      width: 200,
      margin: EdgeInsets.all(0),
      child: Card(
        elevation: 10,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 3),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 20,
            // ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      '6',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 50,
                    ),
                  ),
                  Container(
                    child: Text(
                      '6',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 50,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 50,
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 50,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      '6',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                  Container(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 50,
                    ),
                  ),
                  Container(
                    child: Text(
                      '6',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

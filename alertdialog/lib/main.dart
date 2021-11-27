import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alert Dialog',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              showDialog(
                // barrierColor: Colors.greenAccent[50],
                barrierDismissible: false,
                context: context,
                builder: (context) => AlertDialog(
                  title: Text('This is the dialog box'),
                  actions: [
                    for (int i = 0; i < 5; i++) Text('I am option number $i'),
                  ],
                  content: OutlineButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('Confirmed'),
                  ),
                ),
              );
            },
            child: Text('Show Alert Dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                // barrierColor: Colors.greenAccent[50],
                barrierDismissible: false,
                context: context,
                builder: (context) => AlertDialog(
                    title: Text('This is the dialog box with text field'),
                    actions: [
                      for (int i = 0; i < 5; i++) Text('I am option number $i'),
                      OutlineButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Confirmed'),
                      ),
                    ],
                    content: TextField(
                      decoration: InputDecoration(label: Text('Click me')),
                    )),
              );
            },
            child: Text('Show Alert Dialog'),
          ),
        ],
      ),
    );
  }
}

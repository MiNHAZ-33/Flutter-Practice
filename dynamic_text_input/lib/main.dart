import 'package:flutter/material.dart';

import 'transaction_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dynamic Text Input',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
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
  List<Transactions> transaction = [
    Transactions(id: 'First', label: 'Hoodie', amount: 500),
    Transactions(id: 'Second', label: 'Shoes', amount: 1200),
  ];

  final idController = TextEditingController();
  final labelController = TextEditingController();
  final amountController = TextEditingController();

  void addNewTransaction(String newId, String newLabel, double newAmount) {
    final newTx = Transactions(
        id: newId, label: newLabel, amount: double.parse(newAmount.toString()));
    setState(() {
      transaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping List'),
      ),
      body: Center(
        child: Column(
          children: [
            Column(
              children: transaction.map((tx) {
                return Card(
                  color: Colors.pink,
                  elevation: 10,
                  child: Column(
                    children: [
                      Text(tx.id),
                      Text(tx.label),
                      Text(tx.amount.toString())
                    ],
                  ),
                );
              }).toList(),
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('ID plz'),
              ),
              controller: idController,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Label plz'),
              ),
              controller: labelController,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Amount plz'),
              ),
              controller: amountController,
            ),
            ElevatedButton(
              onPressed: () {
                print(idController.text);
                addNewTransaction(idController.text, labelController.text,
                    double.parse(amountController.text));
              },
              child: Text('Add New'),
            ),
          ],
        ),
      ),
    );
  }
}

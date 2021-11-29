import 'package:add_contact/models.dart';
import 'package:flutter/material.dart';

import 'user_contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        primaryColor: Color(0xff917BA8),
        backgroundColor: Color(0xff917BA8),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  void addNewContact(String id, String name, int number) {
    final addCnt = Contacts(id: id, name: name, number: number);

    setState(() {
      contactList.add(addCnt);
    });
  }

  

  final idController = TextEditingController();
  final nameController = TextEditingController();
  final numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: Theme.of(context).primaryColor,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'Contacts',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            User(contactList),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Card(
                  elevation: 10,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          label: Text('Enter your id'),
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        controller: idController,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          label: Text('Enter your name'),
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        controller: nameController,
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          label: Text('Enter your number'),
                          border: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        controller: numberController,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            addNewContact(
                              idController.text,
                              nameController.text,
                              int.parse(numberController.text),
                            );
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Save',
                            style: TextStyle(fontSize: 15),
                          ))
                    ],
                  ),
                );
              });
        }));
  }
}

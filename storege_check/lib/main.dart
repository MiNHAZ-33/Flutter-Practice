import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:storege_check/firebase.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDqbNPknQD3sQVFO-iyEIM7uaGnyBx7Jr4",
        authDomain: "storage-check-3bcc0.firebaseapp.com",
        projectId: "storage-check-3bcc0",
        storageBucket: "storage-check-3bcc0.appspot.com",
        messagingSenderId: "701933348339",
        appId: "1:701933348339:web:e55605d2411fdde4251e86"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'phonebook',
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
  final FirebaseUp firebase = FirebaseUp();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text('PhoneBook'),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('phonebook').snapshots(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: (snapshot.data!).docs.length,
            itemBuilder: (context, _) {
              return ListTile(
                title: Text(snapshot.data!.docs[_].id +
                    '   ' +
                    snapshot.data!.docs[_]['name']),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Column(children: [
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  TextField(
                    controller: phoneNoController,
                    decoration: InputDecoration(
                      labelText: 'Phone No',
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          firebase.upload(
                            nameController.text,
                            phoneNoController.text,
                          );
                          Navigator.pop(context);
                        },
                        child: Text('Confirm'),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel')),
                    ],
                  ),
                ]),
              );
            },
          );
          nameController.clear();
          phoneNoController.clear();
        },
        child: Icon(Icons.add_rounded),
      ),
    );
  }
}

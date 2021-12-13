import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future getUserData() async {
    var response = await http
        .get(Uri.https('https://jsonplaceholder.typicode.com/', 'users'));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];
    for (var u in jsonData) {
      User user = User(u['name'], u['email'], u['username']);
      users.add(user);
    }
    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is the api'),
        ),
        body: Center(
          child: Container(
            child: Card(
              child: FutureBuilder(
                future: getUserData(),
                builder: (context, snapshot) {
                  if (snapshot.data == null) {
                    return Container(
                      child: Text('Loading...'),
                    );
                  } else
                    return ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) => Container(
                        child: Column(
                          children: [Text(snapshot.data.toString()),
                          Text(index.toString())],
                        ),
                      ),
                    );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class User {
  final String name, email, username;
  User(this.name, this.email, this.username);
}

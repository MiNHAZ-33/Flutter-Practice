import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage(this.name, this.email, this.password);

  String name;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [Text('Message from $name'), Icon(Icons.home)],
        ),
        backgroundColor: Colors.pink,
        flexibleSpace: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: SizedBox(),
        ),
      ),
      body: Column(
        children: [
          Text(name),
          Text(email),
          Text(password),
        ],
      ),
    );
  }
}

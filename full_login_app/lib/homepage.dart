import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage(this.name, this.email, this.password);

  String name;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

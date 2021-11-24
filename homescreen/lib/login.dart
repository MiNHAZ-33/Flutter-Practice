import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            SizedBox(
              height: 60,
            ),
            buildEmail(),
            SizedBox(
              height: 60,
            ),
            buildPassword(),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEmail() {
    return TextField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        label: Text('Email'),
        border: OutlineInputBorder(),
        hintText: 'abc@example.com',
        prefixIcon: Icon(Icons.mail),
        suffixIcon: emailController.text.isEmpty
            ? Container(
                width: 0,
              )
            : IconButton(
                onPressed: () {
                  emailController.clear();
                },
                icon: Icon(Icons.close),
              ),
      ),
    );
  }

  Widget buildPassword() => TextField(
        controller: passController,
        keyboardType: TextInputType.visiblePassword,
        decoration: InputDecoration(
          label: Text('Password'),
          border: OutlineInputBorder(),
          //errorText: 'Password is incorrect',
          suffixIcon: IconButton(
            icon: isPasswordVisible
                ? Icon(Icons.visibility)
                : Icon(Icons.visibility_off),
            onPressed: () {
              setState(
                () {
                  isPasswordVisible = !isPasswordVisible;
                },
              );
            },
          ),
        ),
        obscureText: isPasswordVisible,
      );
}

import 'package:contatct_full/datas.dart';
import 'package:contatct_full/messages.dart';
import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  LogInPage(this.newMsg);
    ContactData newMsg;

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final msgController = TextEditingController();

  void addData(String name, String email, String subject, String messages) {
    final newMSG = ContactData(
        name: name, email: email, subject: subject, messages: messages);
    setState(() {
      newMsg = newMSG;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contact List'),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Name'),
              ),
              controller: nameController,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Email Address'),
              ),
              controller: emailController,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Subject'),
              ),
              controller: subjectController,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text('Messages'),
                hintMaxLines: 5,
              ),
              controller: msgController,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                addData(nameController.text, emailController.text,
                    subjectController.text, msgController.text);
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Messages(newMsg)));
              },
              child: Text('Send Mail'),
            ),
          ],
        ),
      ),
    );
  }
}

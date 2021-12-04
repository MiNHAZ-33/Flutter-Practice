import 'package:contatct_full/datas.dart';
import 'package:flutter/material.dart';
import './loginpage.dart';

class Messages extends StatelessWidget {
  List<ContactData> recievedText = [];

  //Messages(this.recievedText);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Message from ' + recievedText.name),
      ),
      body: Center(
        child: Container(
          color: Colors.grey,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text('Sender Name :' + recievedText.name),
            Text('Sender Name :' + recievedText.email),
            Text('Sender Name :' + recievedText.subject),
            Text('Sender Name :' + recievedText.messages),],
          ),
        ),
      ),
    );
  }
}

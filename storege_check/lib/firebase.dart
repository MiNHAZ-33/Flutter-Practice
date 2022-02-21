import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirebaseUp {
  FirebaseFirestore storage = FirebaseFirestore.instance;

  Future<bool> upload(
    String name,
    String phoneNo,
  ) async {
    bool okay = true;
    try {
      await storage.collection('phonebook').doc(phoneNo).set({'name': name});
    } catch (e) {
      okay = false;
    }
    return okay;
  }

  getData(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: storage.collection('phonebook').snapshots(),
      builder: (context, snapshot) {
        return ListView.builder(
          itemCount: (snapshot.data!).docs.length,
          itemBuilder: (context, _) {
            return ListTile(title: snapshot.data!.docs[_]['name']);
          },
        );
      },
    );
  }
}

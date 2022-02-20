import 'package:cloud_firestore/cloud_firestore.dart';
import './data.dart';

class Uploading {
  final FirebaseFirestore _store = FirebaseFirestore.instance;

  Future<String> atStore(Data data) async {
    String check = 'Some error occured';
    try {
      await _store.collection('Test').doc('info').set(data.toJson());
      check = 'Success';
    } catch (e) {
      check = e.toString();
    }
    return check;
  }

  Future<Data> getDataFromStore() async {
    DocumentSnapshot data = await _store.collection('Test').doc('info').get();
    return Data(data['name'], data['id']);
  }
}

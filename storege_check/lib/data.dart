import 'package:flutter/cupertino.dart';
import 'package:storege_check/fire.dart';

class Data {
  String name;
  String id;

  Data(this.name, this.id);

  Map<String, dynamic> toJson() => {
        'name': name,
        'id': id,
      };
}

class DataProvider with ChangeNotifier {
  Data? _data;

  Data get getData => _data!;

  Future<void> setData() async {
    Data? data = await Uploading().getDataFromStore();
    _data = data;
    notifyListeners();
  }
}

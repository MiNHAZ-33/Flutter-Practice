import 'dart:convert';

import 'package:eshop_project/provider/httpreception.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  String _token = '';
  DateTime _expirein = DateTime.now();
  String _uid = '';

  bool get isAuth {
    return _token != '';
  }

  String get token {
    return _token;
  }

  String get uid {
    return _uid;
  }

  Future<void> signUp(String email, String password) async {
    final url =
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyAlS1rzk5KfftSr3EBRDrgGOaK4GPQ9XC8';
    try {
      final response = await http.post(
        Uri.parse(url),
        body: json.encode(
          {
            'email': email,
            'password': password,
            'returnSecureToken': true,
          },
        ),
      );
      final responseData = json.decode(response.body);
      if (responseData != null) {
        throw HttpException(responseData['error']['message']);
      }
    } catch (e) {
      rethrow;
    }
  }
}

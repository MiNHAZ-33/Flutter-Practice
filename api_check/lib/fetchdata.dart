import 'dart:convert';

import 'package:http/http.dart' as http;

import 'files.dart';

Future<List<Files>> getData() async {
  final response = await http.get(
    Uri.parse('https://jsonplaceholder.typicode.com/comments'),
  );

  if (response.statusCode == 200) {
    List<Files> body = jsonDecode(response.body);
    List<Files> netData =
        body.map((dynamic file) => Files.fromJson(file)).toList();
    return netData;
  }
}

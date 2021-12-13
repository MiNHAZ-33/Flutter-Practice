import 'dart:convert';

import 'dart:async';
import 'package:http/http.dart' as http;
import './photos.dart';

Future<List<Photos>> fetchphotos() async {
  final response = await http.get(
    Uri.parse(
      'https://jsonplaceholder.typicode.com/photos',
    ),
  );

  if (response.statusCode == 200) {
    // return Photos.fromJson(
    //   (jsonDecode(response.body)),
    // );
    List<dynamic> body = jsonDecode(response.body);
    List<Photos> netData =
        body.map((dynamic itm) => Photos.fromJson(itm)).toList();
    return netData;
  } else {
    throw Exception('failed to load data');
  }
}

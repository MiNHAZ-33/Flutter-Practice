import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import './photos.dart';
import 'dart:convert';

Future <Photos> fetchPhoto() async {
  var jsonResponse = convert.jsonDecode(response.body)
}

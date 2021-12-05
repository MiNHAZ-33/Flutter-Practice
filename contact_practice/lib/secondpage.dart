
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String datas;
  SecondScreen({required this.datas});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(datas),
      ),
    );
  }
}

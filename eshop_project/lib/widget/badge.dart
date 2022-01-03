import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final int value;
  final Widget child;

  const Badge({Key? key, required this.value, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned(
          top: 8,
          right: 8,
          child: Container(
            padding: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).accentColor,
            ),
            constraints: BoxConstraints(
              minHeight: 16.0,
              minWidth: 16.0,
            ),
            child: Center(child: Text(value.toString())),
          ),
        ),
      ],
    );
  }
}

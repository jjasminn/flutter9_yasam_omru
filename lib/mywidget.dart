import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final Color? renk;
  final Widget? child;

  MyWidget({this.renk = Colors.white, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: renk,
      ),
    );
  }
}

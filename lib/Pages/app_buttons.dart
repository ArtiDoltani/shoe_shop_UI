import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  String text;
  AppButtons({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Colors.orange
        ),
        child: Center(child: Text(text, style:TextStyle(color: Colors.white,) )));
  }
}

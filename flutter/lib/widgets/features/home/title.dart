import 'package:flutter/material.dart';

class TitleApp extends StatelessWidget {
  String title;

  TitleApp(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontFamily: "Bebas",
        fontSize: 50.0,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

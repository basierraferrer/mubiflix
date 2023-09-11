import 'package:flutter/material.dart';

class DetailTitle extends StatelessWidget {
  String title;

  DetailTitle({super.key, this.title = ''});

  @override
  Widget build(BuildContext context) {
    return Text(
      //"Spider-Man: Across the Spider-Verse",
      title,
      style: const TextStyle(
        fontFamily: "Bebas",
        fontSize: 26.0,
        color: Colors.white,
      ),
      textAlign: TextAlign.left,
    );
  }
}

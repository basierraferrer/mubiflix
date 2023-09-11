import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  String subtitle;
  Subtitle({super.key, this.subtitle = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        //"2023, Action, Adventure, Animation, Science Fiction",
        subtitle,
        style: const TextStyle(
          fontFamily: "Poppins-R",
          fontSize: 13.0,
          color: Colors.white,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

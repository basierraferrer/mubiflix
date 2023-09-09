import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  Icon icon;
  String text;

  IconText({
    super.key,
    this.icon = const Icon(Icons.warning),
    this.text = 'Change text',
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: icon,
        ),
        Text(
          text,
          style: const TextStyle(
            fontFamily: "Poppins-R",
            fontSize: 12.0,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  String textButton = '';
  VoidCallback onPressed;
  IconTextButton({super.key, this.textButton = '', required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => const Color(0xFF737373),
        ),
      ),
      onPressed: onPressed,
      icon: const Icon(
        Icons.play_arrow,
        size: 24.0,
        color: Colors.white,
      ),
      label: Text(
        textButton,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: 'Poppins-M',
          fontSize: 16.0,
        ),
      ),
    );
  }
}

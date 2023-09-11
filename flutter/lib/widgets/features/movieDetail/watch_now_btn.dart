import 'package:flutter/material.dart';

class WatchNowButton extends StatelessWidget {
  final String text = 'Watch Now';
  const WatchNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      icon: const Icon(
        Icons.play_circle_fill,
        color: Colors.white,
        size: 20.0,
      ),
      label: Text(
        text,
        style: const TextStyle(
            fontFamily: "Poppins-M", color: Colors.white, fontSize: 24.0),
      ),
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => const Color(0xFFB43FEB),
        ),
      ),
    );
  }
}

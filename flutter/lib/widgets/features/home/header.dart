import 'package:flutter/material.dart';
import 'package:mubiflix/widgets/features/home/logo.dart';
import 'package:mubiflix/widgets/features/home/title.dart';

class HeaderAppBar extends StatelessWidget {
  const HeaderAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 8.0,
      ),
      child: Row(
        children: [
          const LogoApp(),
          TitleApp("Mubiflix"),
        ],
      ),
    );
  }
}

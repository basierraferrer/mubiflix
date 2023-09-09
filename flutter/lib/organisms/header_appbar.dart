import 'package:flutter/material.dart';
import 'package:mubiflix/atoms/logo_app.dart';
import 'package:mubiflix/atoms/title_app.dart';

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

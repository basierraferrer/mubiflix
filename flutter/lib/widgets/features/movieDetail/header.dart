import 'package:flutter/material.dart';
import 'package:mubiflix/widgets/global/card_image.dart';

class Header extends StatelessWidget {
  String pathBackgroud;

  Header({super.key, this.pathBackgroud = ''});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CardImage(
          pathImage: pathBackgroud,
          height: 316,
          fitImage: BoxFit.fill,
          opacity: 50.0,
        ),
        const BackButton(),
      ],
    );
  }
}

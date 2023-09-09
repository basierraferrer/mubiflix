import 'package:flutter/material.dart';
import 'package:mubiflix/atoms/card_image.dart';
import 'package:mubiflix/models/cast_movie.dart';

class CastCard extends StatelessWidget {
  CastMovie cast;

  CastCard({
    super.key,
    required this.cast,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardImage(
          pathImage: cast.pathImage,
          width: 100,
          height: 100,
          fitImage: BoxFit.fitWidth,
          shape: BoxShape.circle,
          margin: const EdgeInsets.only(
            top: 16.0,
            bottom: 8.0,
            left: 8.0,
            right: 8.0,
          ),
        ),
        Text(
          cast.character,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: "Poppins-M",
            color: Colors.white,
            fontSize: 10.0,
          ),
        ),
        Text(
          cast.name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: "Poppins-R",
            color: Colors.white,
            fontSize: 9.0,
          ),
        ),
      ],
    );
  }
}

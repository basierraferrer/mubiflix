import 'package:flutter/material.dart';
import 'package:mubiflix/atoms/card_image.dart';

Widget appBarMovieDetail(BuildContext context) {
  return Row(
    children: [
      IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.chevron_left,
          color: Colors.white,
          size: 46.0,
        ),
      )
    ],
  );
}

class HeaderDetail extends StatelessWidget {
  String pathBackgroud;

  HeaderDetail({super.key, this.pathBackgroud = ''});

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
        Positioned(
          top: 20.0,
          left: 5.0,
          child: appBarMovieDetail(context),
        )
      ],
    );
  }
}

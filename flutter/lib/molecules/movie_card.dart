import 'package:flutter/material.dart';
import 'package:mubiflix/atoms/card_image.dart';
import 'package:mubiflix/models/screen_args.dart';

Widget movieTitle(String title) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
    decoration: const BoxDecoration(
      color: Colors.black87,
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    child: Text(
      title,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontFamily: "Bebas",
        color: Colors.white,
        fontSize: 20.0,
      ),
    ),
  );
}

class MovieCard extends StatelessWidget {
  String pathImage;
  String title;
  int id;

  MovieCard({
    super.key,
    this.title = '',
    this.pathImage = '',
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/movieDetail',
          arguments: ScreenArgs(id),
        );
      },
      child: Stack(
        children: [
          CardImage(
            pathImage: pathImage,
            width: 120.0,
            height: 148.0,
            radius: const BorderRadius.all(Radius.circular(16.0)),
            margin: const EdgeInsets.only(
                top: 16.0, bottom: 8.0, left: 8.0, right: 8.0),
          ),
          Positioned(
            bottom: 20.0,
            left: 15.0,
            right: 15.0,
            child: movieTitle(title),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mubiflix/atoms/loader.dart';
import 'package:mubiflix/atoms/icon_text_button.dart';
import 'package:mubiflix/atoms/card_image.dart';
import 'package:mubiflix/models/movie_info.dart';
import 'package:mubiflix/models/screen_args.dart';

Widget titleFeature(titleCard) {
  return Positioned(
    top: 30.0,
    left: 30.0,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
      decoration: const BoxDecoration(
        color: Colors.black87,
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      child: Text(
        titleCard,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontFamily: "Bebas",
          color: Colors.white,
          fontSize: 30.0,
        ),
      ),
    ),
  );
}

Widget buttonFeature(BuildContext context, int id) {
  return Positioned(
    bottom: 30.0,
    left: 30.0,
    child: IconTextButton(
      textButton: "Watch",
      onPressed: () {
        Navigator.pushNamed(
          context,
          '/movieDetail',
          arguments: ScreenArgs(id),
        );
      },
    ),
  );
}

Widget cardFeature(BuildContext context, MovieInfo? movie) {
  return Stack(
    children: [
      CardImage(
        pathImage: movie!.pathBackgroud,
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        height: 200,
      ),
      titleFeature(movie.title),
      buttonFeature(context, movie.id),
    ],
  );
}

class CardFeature extends StatelessWidget {
  Future<MovieInfo?>? movie;

  CardFeature({super.key, this.movie});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: movie,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return cardFeature(context, snapshot.data);
        } else if (snapshot.hasError) {
          print(snapshot.error);
        }
        return const Loader(
          type: 'card',
        );
      },
    );
  }
}

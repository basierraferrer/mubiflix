import 'package:flutter/material.dart';
import 'package:mubiflix/atoms/card_image.dart';
import 'package:mubiflix/atoms/icon_text.dart';
import 'package:mubiflix/organisms/cast_card_list.dart';
import 'package:mubiflix/models/movie_info.dart';

Widget movieTitle(String title) {
  return Text(
    //"Spider-Man: Across the Spider-Verse",
    title,
    style: const TextStyle(
      fontFamily: "Bebas",
      fontSize: 26.0,
      color: Colors.white,
    ),
    textAlign: TextAlign.left,
  );
}

Widget movieSubtitle(String subtitle) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Text(
      //"2023, Action, Adventure, Animation, Science Fiction",
      subtitle,
      style: const TextStyle(
        fontFamily: "Poppins-R",
        fontSize: 13.0,
        color: Colors.white,
      ),
      textAlign: TextAlign.left,
    ),
  );
}

Widget movieSummary(String posterPath, String overview) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        CardImage(
          //pathImage: "/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg",
          pathImage: posterPath,
          width: 125.0,
          height: 180.0,
          radius: const BorderRadius.all(Radius.circular(16.0)),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              //"After reuniting with Gwen Stacy, Brooklyn’s full-time, friendly neighborhood Spider-Man is catapulted across the Multiverse, where he encounters the Spider Society, a team of Spider-People charged with protecting the Multiverse’s very existence. But when the heroes clash on how to handle a new threat, Miles finds himself pitted against the other Spiders and must set out on his own to save those he loves most.",
              overview,
              style: const TextStyle(
                fontFamily: "Poppins-R",
                fontSize: 11.0,
                color: Colors.white70,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget ratingDuration(String score, String runtime) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        IconText(
          icon: const Icon(
            Icons.star,
            size: 14.0,
            color: Color(0xFFFFDC60),
          ),
          text: score,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: IconText(
            icon: const Icon(
              Icons.av_timer,
              size: 14.0,
              color: Colors.white,
            ),
            text: runtime,
          ),
        ),
      ],
    ),
  );
}

Widget watchNowButton() {
  return TextButton.icon(
    icon: const Icon(
      Icons.play_circle_fill,
      color: Colors.white,
      size: 20.0,
    ),
    label: const Text(
      "Watch Now",
      style: TextStyle(
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

class BodyMovieDetail extends StatelessWidget {
  MovieInfo? movieInfo;

  BodyMovieDetail({
    super.key,
    required this.movieInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          movieTitle(movieInfo!.title),
          movieSubtitle(movieInfo!.getSubtitle()),
          movieSummary(movieInfo!.posterPath, movieInfo!.overview),
          ratingDuration(movieInfo!.score, movieInfo!.getRuntime()),
          CastCardList(list: movieInfo!.cast),
          watchNowButton(),
        ],
      ),
    );
  }
}

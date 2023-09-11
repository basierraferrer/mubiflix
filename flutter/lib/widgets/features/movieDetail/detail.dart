import 'package:flutter/material.dart';
import 'package:mubiflix/services/models/movie_info.dart';
import 'package:mubiflix/widgets/features/movieDetail/cast_card_list.dart';
import 'package:mubiflix/widgets/features/movieDetail/detail_title.dart';
import 'package:mubiflix/widgets/features/movieDetail/subtitle.dart';
import 'package:mubiflix/widgets/features/movieDetail/summary.dart';
import 'package:mubiflix/widgets/features/movieDetail/rating.dart';
import 'package:mubiflix/widgets/features/movieDetail/watch_now_btn.dart';

class Detail extends StatelessWidget {
  MovieInfo? movieInfo;

  Detail({
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
          DetailTitle(title: movieInfo!.title),
          Subtitle(subtitle: movieInfo!.getSubtitle()),
          Summary(
            posterPath: movieInfo!.posterPath,
            overview: movieInfo!.overview,
          ),
          RatingDuration(
            score: movieInfo!.score,
            runtime: movieInfo!.getRuntime(),
          ),
          CastCardList(list: movieInfo!.cast),
          const WatchNowButton(),
        ],
      ),
    );
  }
}

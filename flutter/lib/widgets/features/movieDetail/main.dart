import 'package:flutter/material.dart';
import 'package:mubiflix/widgets/global/loader.dart';

import 'package:mubiflix/services/models/movie_info.dart';
import 'package:mubiflix/services/functions/mubiflix_api.dart';
import 'header.dart';
import 'body.dart';

Widget getDetail(MovieInfo? movie) {
  return ListView(
    children: [
      Header(
        pathBackgroud: movie!.pathBackgroud,
      ),
      Detail(
        movieInfo: movie,
      ),
    ],
  );
}

class MovieDetail extends StatefulWidget {
  const MovieDetail({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  State<MovieDetail> createState() => _MovieDetail();
}

class _MovieDetail extends State<MovieDetail> {
  Future<MovieInfo>? _movie;

  @override
  void initState() {
    super.initState();
    _movie = MubiflixAPI().getMovieDetail(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _movie,
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return getDetail(snapshot.data);
          } else if (snapshot.hasError) {
            print(snapshot.error);
          }
          return const Loader();
        }));
  }
}

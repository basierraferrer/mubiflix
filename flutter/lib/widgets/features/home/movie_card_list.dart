import 'package:flutter/material.dart';
import 'package:mubiflix/services/models/movie_info.dart';
import 'package:mubiflix/widgets/global/loader.dart';
import 'package:mubiflix/widgets/features/home/movie_card.dart';

Widget titleRow(String title, BuildContext context) {
  void onHandleTap() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Navegating"),
      ),
    );
  }

  return InkWell(
    onTap: onHandleTap,
    child: Container(
      margin: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontFamily: "Poppins-M",
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
          const Icon(
            Icons.arrow_right,
            color: Colors.white,
          ),
        ],
      ),
    ),
  );
}

Widget movieCardList(
    BuildContext context, String title, List<MovieInfo>? movies) {
  return Column(
    children: [
      titleRow(title, context),
      SizedBox(
        height: 172.0,
        child: ListView.builder(
          itemCount: movies!.length,
          itemBuilder: (context, index) {
            return MovieCard(
              id: movies[index].id,
              pathImage: movies[index].pathBackgroud,
              title: movies[index].title,
            );
          },
          //padding: const EdgeInsets.symmetric(horizontal: 12.0),
          prototypeItem: MovieCard(
            id: movies.first.id,
            pathImage: movies.first.pathBackgroud,
            title: movies.first.title,
          ),
          scrollDirection: Axis.horizontal,
        ),
      )
    ],
  );
}

class MovieCardList extends StatelessWidget {
  String title;
  Future<List<MovieInfo>>? movies;

  MovieCardList({
    super.key,
    this.title = '',
    this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: movies,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return movieCardList(context, title, snapshot.data);
        } else if (snapshot.hasError) {
          print(snapshot.error);
        }
        return const Loader(
          type: 'list',
        );
      },
    );
  }
}

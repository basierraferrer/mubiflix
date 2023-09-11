import 'package:flutter/material.dart';

import 'package:mubiflix/services/models/movie_info.dart';
import 'package:mubiflix/widgets/features/home/search.dart';

import 'package:mubiflix/widgets/features/home/card_feature.dart';
import 'package:mubiflix/widgets/features/home/header.dart';
import 'package:mubiflix/widgets/features/home/movie_card_list.dart';
import 'package:mubiflix/services/functions/mubiflix_api.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<MovieInfo>> _mostPopular;
  late Future<List<MovieInfo>> _topRated;
  late Future<MovieInfo> _nowPlaying;

  @override
  void initState() {
    super.initState();
    MubiflixAPI api = MubiflixAPI();
    _mostPopular = api.getMostPopular();
    _topRated = api.getTopRated();
    _nowPlaying = api.getNowPlaying();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20.0),
      children: [
        const HeaderAppBar(),
        const Search(),
        CardFeature(movie: _nowPlaying),
        MovieCardList(title: 'Top rated', movies: _topRated),
        MovieCardList(title: 'Most popular', movies: _mostPopular),
      ],
    );
  }
}

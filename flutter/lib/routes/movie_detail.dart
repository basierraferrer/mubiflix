import 'package:flutter/material.dart';
import 'package:mubiflix/models/screen_args.dart';
import 'package:mubiflix/view/movieDetail/index.dart';

class MovieDetailRoute extends StatelessWidget {
  const MovieDetailRoute({super.key});

  @override
  Widget build(BuildContext context) {
    // Extrae los argumentos de la propiedad settings del ModalRoute actual y lo convierte
    // en un objeto ScreenArguments.
    final ScreenArgs args =
        ModalRoute.of(context)!.settings.arguments as ScreenArgs;

    return Scaffold(
      body: MovieDetail(id: args.id),
    );
  }
}

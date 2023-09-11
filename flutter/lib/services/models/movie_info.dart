import 'package:mubiflix/services/models/cast_movie.dart';

class MovieInfo {
  int id;
  String title;
  String releaseYear;
  String genre;
  String overview;
  String posterPath;
  String pathBackgroud;
  String score;
  int runtime;

  List<CastMovie> cast;

  MovieInfo({
    this.id = 0,
    this.title = '',
    this.releaseYear = '',
    this.genre = '',
    this.overview = '',
    this.posterPath = '',
    this.pathBackgroud = '',
    this.score = '0.0',
    this.runtime = 1,
    this.cast = const [],
  });

  factory MovieInfo.fromJson(Map<String, dynamic> json) {
    return MovieInfo(
      id: json['id'],
      title: json['title'],
      overview: json['overview'],
      posterPath: json['posterPath'],
      releaseYear: json["releaseYear"],
      score: json['score'].toString(),
      pathBackgroud: json["pathBackgroud"],
    );
  }

  factory MovieInfo.detailFromJson(Map<String, dynamic> jsonMovie) {
    List<CastMovie> castList(List<dynamic> json) {
      List<CastMovie> cast = [];

      if (json.isNotEmpty) {
        for (var castItem in json) {
          cast.add(CastMovie.fromJson(castItem));
        }
      }
      return cast;
    }

    return MovieInfo(
      id: jsonMovie['id'],
      title: jsonMovie['title'],
      overview: jsonMovie['overview'],
      posterPath: jsonMovie['posterPath'],
      releaseYear: jsonMovie["releaseYear"],
      genre: jsonMovie['genres'],
      score: jsonMovie['score'].toString(),
      pathBackgroud: jsonMovie["pathBackgroud"],
      runtime: jsonMovie['runtime'],
      cast: castList(jsonMovie['cast']),
    );
  }

  /// Function intToTimeLeft
  /// This method convert a int runtime (minutes) to a string with the format H:m
  /// e.g 1h 26m
  String getRuntime() {
    int hours = runtime ~/ 60; // División entera para obtener las horas
    int minutes = runtime % 60; // Resto para obtener los minutos restantes

    String transform = '';
    if (hours > 0) {
      transform += '$hours h ';
    }
    transform += '$minutes min';

    return transform;
  }

  String getSubtitle() {
    return '$releaseYear, $genre';
  }
}

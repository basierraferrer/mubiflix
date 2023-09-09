import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/movie_info.dart';

class MubiflixAPI {
  static final _instance = MubiflixAPI._internal();

  factory MubiflixAPI() {
    return _instance;
  }

  MubiflixAPI._internal();

  dynamic getUri(String path) {
    // Set your pc ip address IP_ADDRESS:PORT where you're running https://github.com/basierraferrer/mubiflix_api.git
    return Uri.http('192.168.1.42:3000', path);
  }

  Future<List<MovieInfo>> getMostPopular() async {
    final url = getUri('/api/list/mostpopular');
    final response = await http.get(url);
    List<MovieInfo> list = [];

    /// Response OK
    if (response.statusCode == 200) {
      String bodyResponse = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(bodyResponse);

      for (var item in jsonData) {
        list.add(
          MovieInfo.fromJson(item),
        );
      }

      return list;
    } else {
      throw Exception('Connection failed');
    }
  }

  Future<List<MovieInfo>> getTopRated() async {
    final url = getUri('/api/list/toprated');
    final response = await http.get(url);
    List<MovieInfo> list = [];

    /// Response OK
    if (response.statusCode == 200) {
      String bodyResponse = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(bodyResponse);

      for (var item in jsonData) {
        list.add(
          MovieInfo.fromJson(item),
        );
      }

      return list;
    } else {
      throw Exception('Connection failed');
    }
  }

  Future<MovieInfo> getNowPlaying() async {
    final url = getUri('/api/list/nowplaying/1');
    final response = await http.get(url);

    /// Response OK
    if (response.statusCode == 200) {
      String bodyResponse = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(bodyResponse);
      //print(jsonData);
      return MovieInfo.fromJson(jsonData[0]);
      //return MovieInfo();
    } else {
      throw Exception('Connection failed');
    }
  }

  Future<MovieInfo> getMovieDetail(int id) async {
    final url = getUri('/api/detail/$id');

    final response = await http.get(url);

    /// Response OK
    if (response.statusCode == 200) {
      String bodyMovieResponse = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(bodyMovieResponse);
      return MovieInfo.detailFromJson(jsonData);
    } else {
      throw Exception('Connection failed');
    }
  }
}

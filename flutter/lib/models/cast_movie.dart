class CastMovie {
  String name;
  String character;
  String pathImage;

  CastMovie({this.name = '', this.character = '', this.pathImage = ''});

  factory CastMovie.fromJson(Map<String, dynamic> jsonCredits) {
    return CastMovie(
      name: jsonCredits['name'],
      pathImage: jsonCredits['pathImage'] ?? '',
      character: jsonCredits['character'],
    );
  }
}

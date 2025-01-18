class Movie {
  String title;
  String backDropPath;
  String originalTitile;
  String overview;
  String popularity;
  String poseterPath;
  String releaseDate;

  Movie({
    required this.title,
    required this.backDropPath,
    required this.originalTitile,
    required this.overview,
    required this.popularity,
    required this.poseterPath,
    required this.releaseDate,
  });

  factory Movie.formJson(Map<String, dynamic> json) {
    return Movie(
      title: json["title"] ?? "Clear Cache and Cookies",
      backDropPath: json["backdrop_path"] ?? "",
      originalTitile: json["original_title"] ?? "",
      overview: json["overview"] ?? "",
      popularity: (json["popularity"] ?? 0.0).toString(),
      poseterPath: json["poster_path"] ?? "https://www.youtube.com/watch?v=GV3HUDMQ-F8",
      releaseDate: json["release_date"] ?? "",
    );
  }
}


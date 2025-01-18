import 'dart:convert';

import 'package:api_netflix/core/constants.dart';
import 'package:api_netflix/models/movie.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const _topRatedUrl = 'https://api.themoviedb.org/3/movie/top_rated?api_key=${Constants.apiKey}';
  static const _trandingUrl ='https://api.themoviedb.org/3/movie/popular?api_key=${Constants.apiKey}';
  static const _dramaUrl ='https://api.themoviedb.org/3/discover/tv?api_key=${Constants.apiKey}';
  static const _southIndiaUrl = "https://api.themoviedb.org/3/discover/tv?api_key=${Constants.apiKey}&with_original_language=hi&sort_by=popularity.desc";
  static const _top10ShowUrl ="https://api.themoviedb.org/3/discover/tv?api_key=${Constants.apiKey}";

  Future<List<Movie>> topMovies() async {
    final response = await http.get(Uri.parse(_topRatedUrl));
    if (response.statusCode == 200) {
      final decodeData = jsonDecode(response.body)['results'] as List;
      return decodeData.map((movie) => Movie.formJson(movie)).toList();
    } else {
      throw Exception('Failed to load top-rated movies. Status Code: ${response.statusCode}');
    }
  }

  Future<List<Movie>> dramaMovie() async {
    final response = await http.get(Uri.parse(_trandingUrl));
    if (response.statusCode == 200) {
      final decodeData = jsonDecode(response.body)['results'] as List;
      return decodeData.map((movie) => Movie.formJson(movie)).toList();
    } else {
      throw Exception( 'Failed to load top-rated movies. Status Code: ${response.statusCode}');
    }
  }

  Future<List<Movie>> trandingMovie() async {
    final response = await http.get(Uri.parse(_dramaUrl));
    if (response.statusCode == 200) {
      final decodeData = jsonDecode(response.body)['results'] as List;
      return decodeData.map((movie) => Movie.formJson(movie)).toList();
    } else {
      throw Exception('Failed to load top-rated movies. Status Code: ${response.statusCode}');
    }
  }

  Future<List<Movie>> southIndiaMovie() async {
    final response = await http.get(Uri.parse(_southIndiaUrl));
    if (response.statusCode == 200) {
      final decodeData = jsonDecode(response.body)['results'] as List;
      return decodeData.map((movie) => Movie.formJson(movie)).toList();
    } else {
      throw Exception( 'Failed to load top-rated movies. Status Code: ${response.statusCode}');
    }
  }

  Future<List<Movie>> top10TvShow() async {
    final response = await http.get(Uri.parse(_top10ShowUrl));
    if (response.statusCode == 200) {
      final decodeData = jsonDecode(response.body)['results'] as List;
      return decodeData.map((movie) => Movie.formJson(movie)).toList();
    } else {
      throw Exception('Failed to load top-rated movies. Status Code: ${response.statusCode}');
    }
  }
}

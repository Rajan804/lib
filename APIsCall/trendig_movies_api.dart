import 'dart:convert';

import 'package:final_project/model/trendign_movie_model.dart';
import 'package:http/http.dart' as http;

const apiKey = "369886ff1c1debbbda7a038a14d124f2";
//const apiKey = "f95a6d45558dee5ab593965b75e80dfd";

class APIservices {
  final nowShowingAPI =
      //    "https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey";

      "https://api.themoviedb.org/3/movie/top_rated?api_key=$apiKey";
  //for now Showing Movies
  Future<List<Movie>> getNowShowing() async {
    Uri url = Uri.parse(nowShowingAPI);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['results'];
      List<Movie> movies = data.map((movie) => Movie.fromMap(movie)).toList();
      return movies;
    } else {
      throw Exception("Failed to load data");
    }
  }
}

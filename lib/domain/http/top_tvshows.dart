import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/infrastructue/api_key.dart';
import 'package:netflix/domain/model/top_tvshows_model.dart';

class TopTvShowsHome {
  static Future<List<Results>> getTopShows() async{
    var client = http.Client();
    var uri = "http://api.themoviedb.org/3/tv/popular?api_key=$apiKey";
    List topTvResults = [];
    var url = Uri.parse(uri);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      final List<dynamic> results = json['results'];
      for (var tvShows in results) {
        topTvResults.add(tvShows);
      }
    }
    return Results.topTvShowsFromJson(topTvResults);
  }
}
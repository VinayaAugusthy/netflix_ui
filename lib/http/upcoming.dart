import 'dart:convert';

import '../infrastructue/api_key.dart';
import '../model/upcoming.dart';
import 'package:http/http.dart' as http;
class UpcomingHome {
  static Future<List<Results>> getTopShows() async{
    var client = http.Client();
    var uri = "http://api.themoviedb.org/3/tv/popular?api_key=$apiKey";
    List upcomingResults = [];
    var url = Uri.parse(uri);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      final List<dynamic> results = json['results'];
      for (var upcoming in results) {
        upcomingResults.add(upcoming);
      }
    }
    return Results.upcomingFromJson(upcomingResults);
  }
}
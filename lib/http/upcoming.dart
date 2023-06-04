import 'dart:convert';

import '../infrastructue/api_key.dart';
import '../model/upcoming.dart';
import 'package:http/http.dart' as http;
class UpcomingHome {
  static Future<List<ResultsUpcoming>> getUpcomings() async{
    var client = http.Client();
    var uri = "https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey";
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
    return ResultsUpcoming.upcomingFromJson(upcomingResults);
  }
}
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../infrastructue/api_key.dart';
import '../../model/new&hot/everyonewatching_model.dart';
class CallWatching {
  static Future<List<WatchingResults>> getWatching() async{
    var client = http.Client();
    var uri = "https://api.themoviedb.org/3/movie/now_playing?api_key=$apiKey";
    List watchingResultsList = [];
    var url = Uri.parse(uri);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      final List<dynamic> results = json['results'];
      for (var watching in results) {
        watchingResultsList.add(watching);
      }
    }
    return WatchingResults.watchingFromJson(watchingResultsList);
  }
}
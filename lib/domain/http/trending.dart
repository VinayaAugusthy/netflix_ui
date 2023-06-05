import 'dart:convert';

import 'package:netflix/infrastructue/api_key.dart';
import 'package:netflix/domain/model/trending_model.dart';
import 'package:http/http.dart' as http;
class TrendingHome {
 static Future<List<TrendingList>> getTrendingMovies() async{
    var client = http.Client();
    var uri = "https://api.themoviedb.org/3/trending/all/week?api_key=$apiKey";
    List resultTrending = [];
    var url = Uri.parse(uri);
    var response = await client.get(url);
    if (response.statusCode == 200) {
     var json = jsonDecode(response.body);
     final List<dynamic> results = json['results'];

     for (var element in results) {
       resultTrending.add(element);
     }
    }
    return TrendingList.trendingFromSnapshot(resultTrending);
  }
}
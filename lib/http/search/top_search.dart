import 'dart:convert';
import '../../infrastructue/api_key.dart';
import 'package:http/http.dart' as http;
import '../../model/search/top_search_model.dart';

class CallTopSearch {
  static Future<List<TopSearch>> getTopSearch() async{
    var client = http.Client();
    var uri = "https://api.themoviedb.org/3/trending/all/week?api_key=$apiKey";
    List topSearch = [];
    var url = Uri.parse(uri);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      final List<dynamic> results = json['results'];
      for (var values in results) {
        topSearch.add(values);
      }
    }
    return TopSearch.trendingFromSnapshot(topSearch);
  }
}
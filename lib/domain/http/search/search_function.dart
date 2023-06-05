import 'dart:convert';

import '../../../infrastructue/api_key.dart';
import '../../model/search/search_model.dart';
import 'package:http/http.dart' as http;
class CallSearch {
  static Future<List<SearchResults>> getSearch(String value) async{
    var client = http.Client();
    var uri = "https://api.themoviedb.org/3/search/movie?query=$value&api_key=$apiKey";
    List searchValues = [];
    var url = Uri.parse(uri);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      final List<dynamic> results = json['results'];
      for (var values in results) {
        searchValues.add(values);
      }
    }
    return SearchResults.searchValuesFromJson(searchValues);
  }
}
import 'dart:convert';

import 'package:netflix/model/new&hot/coming_soon_model.dart';
import 'package:http/http.dart' as http;

import '../../infrastructue/api_key.dart';
class CallComingSoon {
  static Future<List<ResultsComingSoon>> getcomingSoon() async{
    var client = http.Client();
    var uri = "https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey";
    List comingSoonResults = [];
    var url = Uri.parse(uri);
    var response = await client.get(url);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      final List<dynamic> results = json['results'];
      for (var comingSoon in results) {
        comingSoonResults.add(comingSoon);
      }
    }
    return ResultsComingSoon.comingSoonFromJson(comingSoonResults);
  }
}
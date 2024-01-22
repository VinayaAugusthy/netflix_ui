// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:netflix/domain/model/downloads/download_model.dart';

// import '../../../infrastructue/api_key.dart';
// class Download{
//   static Future<List<ResultsDownloads>> getImages() async{
//     var client = http.Client();
//     var uri = "https://api.themoviedb.org/3/movie/top_rated?api_key=$apiKey";
//     List downloadResults = [];
//     var url = Uri.parse(uri);
//     var response = await client.get(url);
//     if (response.statusCode == 200) {
//       var json = jsonDecode(response.body);
//       final List<dynamic> results = json['results'];
//       for (var images in results) {
//         downloadResults.add(images);
//       }
//     }
//     return ResultsDownloads.downloadsFromJson(downloadResults);
//   }
// }
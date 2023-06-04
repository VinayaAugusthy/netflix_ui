class DownloadScreenImages {
  int? page;
  List<ResultsDownloads>? results;
  int? totalPages;
  int? totalResults;

  DownloadScreenImages(
      {this.page, this.results, this.totalPages, this.totalResults});

  DownloadScreenImages.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    if (json['results'] != null) {
      results = <ResultsDownloads>[];
      json['results'].forEach((v) {
        results!.add(new ResultsDownloads.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }
}

class ResultsDownloads {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  // double? voteAverage;
  // int? voteCount;

  ResultsDownloads(
      {this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      // this.voteAverage,
      // this.voteCount
      });

  ResultsDownloads.fromJson(Map<String, dynamic> json) {
    adult = json['adult'];
    backdropPath = json['backdrop_path'];
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    overview = json['overview'];
    popularity = json['popularity'];
    posterPath = json['poster_path'];
    releaseDate = json['release_date'];
    title = json['title'];
    video = json['video'];
    // voteAverage = json['vote_average'];
    // voteCount = json['vote_count'];
  }
static List<ResultsDownloads> downloadsFromJson(List<dynamic> downloads){
  return downloads.map((json) => ResultsDownloads.fromJson(json)).toList();
 }

}
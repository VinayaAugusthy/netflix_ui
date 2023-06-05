class ComingSoonModel {
  Dates? dates;
  int? page;
  List<ResultsComingSoon>? results;
  int? totalPages;
  int? totalResults;

  ComingSoonModel(
      {this.dates,
      this.page,
      this.results,
      this.totalPages,
      this.totalResults});

  ComingSoonModel.fromJson(Map<String, dynamic> json) {
    dates = json['dates'] != null ? Dates.fromJson(json['dates']) : null;
    page = json['page'];
    if (json['results'] != null) {
      results = <ResultsComingSoon>[];
      json['results'].forEach((v) {
        results!.add(ResultsComingSoon.fromJson(v));
      });
    }
    totalPages = json['total_pages'];
    totalResults = json['total_results'];
  }
}

class Dates {
  String? maximum;
  String? minimum;

  Dates({this.maximum, this.minimum});

  Dates.fromJson(Map<String, dynamic> json) {
    maximum = json['maximum'];
    minimum = json['minimum'];
  }

}

class ResultsComingSoon {
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
  double? voteAverage;
  int? voteCount;

  ResultsComingSoon(
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

  ResultsComingSoon.fromJson(Map<String, dynamic> json) {
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
static List<ResultsComingSoon> comingSoonFromJson(List<dynamic> comingSoon){
  return comingSoon.map((json) => ResultsComingSoon.fromJson(json)).toList();
 }
}
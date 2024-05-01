class ArticleModel {
  final String? image;
  final String title;
  final String? description;

  ArticleModel(
      {required this.image, required this.title, required this.description});

  factory ArticleModel.fromjson(json) {
    return ArticleModel(
        description: json['description'],
        image: json['urlToImage'],
        title: json['title']);
  }
}

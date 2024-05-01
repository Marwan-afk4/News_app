import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=16521b694b084a08ad059db40ca01a7d&category=$category');

      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];
      List<ArticleModel> articlesList = [];

      for (var e in articles) {
        ArticleModel ArticlesModel = ArticleModel.fromjson(e);
        articlesList.add(ArticlesModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({super.key, required this.categories});

  final String categories;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsServices(Dio()).getNews(category: categories),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articlenews: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
              child: Center(
                child: Text(
                  'oops, there is no data right now come later',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            );
          } else {
            return const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                ),
              ),
            );
          }
        });
  }
}

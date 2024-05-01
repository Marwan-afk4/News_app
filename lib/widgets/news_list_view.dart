// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/widgets/news_view.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articlenews;

  const NewsListView({super.key, required this.articlenews});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articlenews.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: NewsTile(
              articleModel: articlenews[index],
            ),
          );
        },
      ),
    );
  }
}

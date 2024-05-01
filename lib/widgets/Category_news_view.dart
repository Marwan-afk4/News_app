import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_list_view_builder.dart';

class CategoryNewsView extends StatelessWidget {
  const CategoryNewsView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              categories: category,
            )
          ],
        ),
      ),
    );
  }
}

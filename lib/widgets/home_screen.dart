import 'package:flutter/material.dart';
import 'package:newsapp/widgets/category_list_view.dart';
import 'package:newsapp/widgets/news_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(10),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CetgoryListView(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 18,
              ),
            ),
            NewsListViewBuilder(
              categories: 'sports',
            )
          ],
        ),
      ),
    );
  }
}

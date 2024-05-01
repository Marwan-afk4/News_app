import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/category_card.dart';

class CetgoryListView extends StatelessWidget {
  const CetgoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
      image: 'assets/sports.jpg',
      name: 'sports',
    ),
    CategoryModel(image: 'assets/science.jpg', name: 'science'),
    CategoryModel(image: 'assets/tech.jpg', name: 'technology'),
    CategoryModel(image: 'assets/health.jpg', name: 'health'),
    CategoryModel(image: 'assets/genral.jpg', name: 'general'),
    CategoryModel(image: 'assets/entertaiment.jpg', name: 'entertainment'),
    CategoryModel(image: 'assets/buss.jpg', name: 'business'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(model: categories[index]);
        },
      ),
    );
  }
}

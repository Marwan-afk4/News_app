import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/Category_news_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.model});

  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryNewsView(
                category: model.name,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(image: AssetImage(model.image)),
          ),
          height: 85,
          width: 150,
          child: Center(
            child: Text(
              model.name,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

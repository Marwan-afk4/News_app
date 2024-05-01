import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              articleModel.image ??
                  'https://as2.ftcdn.net/v2/jpg/04/00/24/31/1000_F_400243185_BOxON3h9avMUX10RsDkt3pJ8iQx72kS3.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            articleModel.title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            articleModel.description ?? ' ',
            style: const TextStyle(
                color: Color.fromARGB(255, 71, 71, 71), fontSize: 14),
            maxLines: 2,
          )
        ],
      ),
    );
  }
}

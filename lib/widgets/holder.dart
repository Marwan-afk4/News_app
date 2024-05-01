// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:newsapp/models/article_model.dart';
// import 'package:newsapp/services/news_service.dart';
// import 'package:newsapp/widgets/news_view.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({super.key});

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   List<ArticleModel> articlenews = [];
//   bool isloading = true;
//   @override
//   void initState() {
//     super.initState();
//     GetNews();
//   }

//   // ignore: non_constant_identifier_names
//   Future<void> GetNews() async {
//     articlenews = await NewsServices(Dio()).getNews();
//     isloading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isloading
//         ? const SliverFillRemaining(
//             child: Center(
//               child: CircularProgressIndicator(
//                 strokeWidth: 2,
//               ),
//             ),
//           )
//         : articlenews.isNotEmpty
//             ? SliverList(
//                 delegate: SliverChildBuilderDelegate(
//                 childCount: articlenews.length,
//                 (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 8.0),
//                     child: NewsTile(
//                       articleModel: articlenews[index],
//                     ),
//                   );
//                 },
//               ))
//             : const SliverFillRemaining(
//                 child: Center(
//                     child: Text('OOPS , There was an error,try again later',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
//               );
//   }
// }

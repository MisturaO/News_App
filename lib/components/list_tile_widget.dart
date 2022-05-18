import 'package:flutter/material.dart';
import 'package:news_app/data_model/article.dart';
import 'package:news_app/data_model/article_data.dart';
import 'package:news_app/screens/screen2.dart';
import 'package:provider/provider.dart';

Widget listTileWidget(Article article, BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Screen2(article: article),
        ),
      );
    },
    child: Container(
      margin: const EdgeInsets.all(12.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              blurRadius: 4.0,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Text(
              '${Provider.of<ArticleData>(context).allArticlesList}',
              // article.source.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 15.0),
          Container(
            child: Text(
              '${Provider.of<ArticleData>(context).allArticlesList}',
              // article.title,
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    ),
  );
}

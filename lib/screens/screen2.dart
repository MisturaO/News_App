import 'package:flutter/material.dart';
import 'package:news_app/data_model/article.dart';


class Screen2 extends StatelessWidget {
  final Article article;
  Screen2({required this.article});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(article.title),
        ),
        body: Container(
          margin: const EdgeInsets.all(12.0),
          padding: const EdgeInsets.all(8.0),
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
                  article.source.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        article.publishedAt.toString(),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    Container(
                      child: Text(article.title,
                          style: TextStyle(color: Colors.black)),
                    )
                  ])
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:news_app/data_model/article_data.dart';
import 'screens/screen1.dart  ';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ArticleData(),
      child: MaterialApp(
        theme: ThemeData(
          // This is the theme of your application.
          primarySwatch: Colors.blue,
        ),
        home: Screen1(),
      ),
    );
  }
}

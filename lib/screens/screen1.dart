import 'package:flutter/material.dart';
import 'package:news_app/components/list_tile_widget.dart';
import 'package:news_app/data_model/article.dart';
import 'package:news_app/data_model/article_data.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatefulWidget {
  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  get articlesModel => articlesModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //  fetch data from Api.
    final articlesModel = Provider.of<ArticleData>(context, listen: false);
    articlesModel.allArticlesList;
  }

  getData() async {
    var articlesModel = Provider.of<ArticleData>(context, listen: false);
    var response = await articlesModel.allArticlesList;

    if (response != null) {
      articlesModel.setArticleList;
    } else {
      'throw error';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Breaking News',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white54,
      ),
      body: Consumer<ArticleData>(
        builder: (context, value, child) => articlesModel.isLoading(),
        child: Visibility(
          visible: articlesModel.allArticlesList,
          child: ListView.builder(
              itemCount: articlesModel.getArticleByIndex,
              itemBuilder: (context, index) => listTileWidget(
                  articlesModel.getArticleByIndex(index), context)),
          replacement: Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

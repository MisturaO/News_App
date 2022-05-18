import 'package:flutter/foundation.dart';
import 'package:news_app/data_model/article.dart';

class ArticleData extends ChangeNotifier {
  bool _isLoading = true;
  List<Article> _articlesList = [];

  bool get isLoading => _isLoading;

  setArticleIsLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  List<Article> get articlesList => _articlesList;

  setArticleList(List<Article> articles) {
    _articlesList = articles;
    notifyListeners();
  }

  allArticlesList(List<Article> articles) {
    _articlesList.addAll(articles);
    notifyListeners();
  }

  int get articleListLength => _articlesList.length;

  getArticleByIndex(int index) => _articlesList[index];


}

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:news_app/data_model/article.dart';

// 3. now i will make the http request.
// This class will allow me to make a http get request from the API
// and get the articles and then return a list of articles.

class NetworkService {
  Future<List<Article>> getArticle() async {
    String newsApiUrl =
        "https://newsapi.org/v2/everything?q=bitcoin&apiKey=0bf7d5ec422248a980f7dfc082ee2e7d";
    http.Response response = await http.get(Uri.parse(newsApiUrl));

    List<Map<String, dynamic>>.from(json.decode(response.body)["articles"]);
    if (response.statusCode == 200) {
      json.decode(response.body);
    } else {
      throw ('cant get news');
    }
    return List<Map<String, dynamic>>.from(
            jsonDecode(response.body)["articles"])
        .map((json) => Article.fromJson(json))
        .toList();
  }
}

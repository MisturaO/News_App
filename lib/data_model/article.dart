import 'dart:convert';
//2. now i will create the article model and copy the json structure
// to make a dart object.

Article articleFromJson(String str) => Article.fromJson(json.decode(str));
String articleToJson(Article data) => json.encode(data.toJson());

class Article {
  Article({
    required this.source,
    required this.author,
    required this.title,
    required this.publishedAt,
  });

  Source source;
  String author;
  String title;
  DateTime publishedAt;

  //Here's the function that will map the json into a list
  factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: Source.fromJson(json["source"]),
        author: json["author"].toString(),
        title: json["title"],
        publishedAt: DateTime.parse(json["publishedAt"]),
      );

  Map<String, dynamic>? toJson() => {
        "source": source.toJson(),
        "author": author,
        "title": title,
        "publishedAt": publishedAt.toIso8601String(),
      };
}

class Source {
  Source({
    this.id,
    required this.name,
  });

  dynamic id;
  String name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic>? toJson() => {
        "id": id,
        "name": name,
      };
}

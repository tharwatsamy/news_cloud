import 'package:flutter/foundation.dart';

class Article {
  final String title;
  final String description;
  final String imageUrl;
  final String articleUrl;

  Article({this.title, this.description, this.imageUrl, this.articleUrl});

  factory Article.fromJson(Map<String, dynamic> jsonData) {
    return Article(
        title: jsonData['title'],
        description: jsonData['description'],
        imageUrl: jsonData['urlToImage'],
        articleUrl: jsonData['url']);
  }
}

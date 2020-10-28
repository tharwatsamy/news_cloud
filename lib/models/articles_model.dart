import 'package:news_cloud/models/article_model.dart';

class ArticlesList {
  final List<dynamic> articles;
  ArticlesList({this.articles});
  factory ArticlesList.fromJson(Map<String, dynamic> jsonData) {
    return ArticlesList(
      articles: jsonData['articles'],
    );
  }
}

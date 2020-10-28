import 'package:flutter/cupertino.dart';
import 'package:news_cloud/models/article_model.dart';
import 'package:news_cloud/services/news_service.dart';

class ArticlesListViewModel extends ChangeNotifier {
  List<Article> _articlesList = [];
  List<Article> _articlesListByCategory = [];

  Future<void> fetchArticles() async {
    _articlesList = await NewsApi().fetchArticles();
    notifyListeners();
  }

  Future<void> fetchArticlesByCategory(String category) async {
    _articlesListByCategory = await NewsApi().fetchArticlesByCategory(category);
    notifyListeners();
  }

  List<Article> get articlesList => _articlesList;
  List<Article> get articlesListByCategory => _articlesListByCategory;
}

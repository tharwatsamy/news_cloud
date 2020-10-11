import 'package:flutter/material.dart';
import 'package:news_cloud/services/news_service.dart';

void main() {
  runApp(NewsCloud());
}

class NewsCloud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Cloud',
      home: Scaffold(
        body: Center(
          child: GestureDetector(
            onTap: () async {
              NewsApi newsApi = NewsApi();
              var articles = await newsApi.fetchArticlesByCategory('sports');
              for (var article in articles) {
                print(article.title);
              }
            },
            child: Container(
              child: Text('fetchData'),
            ),
          ),
        ),
      ),
    );
  }
}

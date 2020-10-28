import 'package:flutter/material.dart';
import 'package:news_cloud/view_models/list_of_articles_view_model.dart';
import 'package:news_cloud/views/home_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(NewsCloud());
}

class NewsCloud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ArticlesListViewModel>(
      create: (context) => ArticlesListViewModel(),
      child: MaterialApp(
        home: HomeView(),
      ),
    );
  }
}

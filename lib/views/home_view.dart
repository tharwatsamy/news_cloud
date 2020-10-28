import 'package:flutter/material.dart';
import 'package:news_cloud/view_models/list_of_articles_view_model.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            await Provider.of<ArticlesListViewModel>(context, listen: false)
                .fetchArticles();
            print(Provider.of<ArticlesListViewModel>(context, listen: false)
                .articlesList);
          },
        ),
      ),
    );
  }
}

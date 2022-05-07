import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/datamodels/info_article.dart';
import 'package:uafrontend/ui/views/article_view/article_page.dart';
import 'package:uafrontend/ui/views/article_view/article_view_model.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({Key? key, required this.selectedArticle})
      : super(key: key);

  final InfoArticle selectedArticle;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ArticleViewModel>.reactive(
      builder: (context, model, child) => ArticlePage(selectedArticle),
      viewModelBuilder: () => ArticleViewModel(selectedArticle),
      onModelReady: (model) => model.fetchContent(),
    );
  }
}

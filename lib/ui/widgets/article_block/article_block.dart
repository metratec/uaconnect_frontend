import 'package:flutter/material.dart';
import 'package:uafrontend/datamodels/info_article.dart';
import 'package:uafrontend/ui/widgets/article_block/article_block_desktop.dart';
import 'package:uafrontend/ui/widgets/article_block/article_block_mobile.dart';

class ArticleBlock extends StatelessWidget {
  const ArticleBlock(this.articleList, {Key? key}) : super(key: key);

  final List<InfoArticle> articleList;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return ArticleBlockMobile(articleList);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return ArticleBlockMobile(articleList);
        } else {
          return ArticleBlockMobile(articleList);
        }
      },
    );
  }
}

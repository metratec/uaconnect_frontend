import 'package:flutter/material.dart';
import 'package:uafrontend/datamodels/newspost.dart';
import 'package:uafrontend/ui/views/home_view/news/news_block_desktop.dart';
import 'package:uafrontend/ui/views/home_view/news/news_block_mobile.dart';

class NewsOverview extends StatelessWidget {
  const NewsOverview(this.newsList, this.content, {Key? key}) : super(key: key);

  final List<NewsPost> newsList;
  final dynamic content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return NewsOverviewMobile(newsList, content);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return NewsOverviewMobile(newsList, content);
        } else {
          return NewsOverviewMobile(newsList, content);
        }
      },
    );
  }
}

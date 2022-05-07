import 'package:flutter/material.dart';
import 'package:uafrontend/datamodels/newspost.dart';
import 'package:uafrontend/ui/views/news_view/news_list/news_list_desktop.dart';
import 'package:uafrontend/ui/views/news_view/news_list/news_list_mobile.dart';

class NewsList extends StatelessWidget {
  const NewsList(this.newsList, this.content, {Key? key}) : super(key: key);
  final List<NewsPost> newsList;
  final dynamic content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return NewsListMobile(newsList, content);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return NewsListMobile(newsList, content);
        } else {
          return NewsListMobile(newsList, content);
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/ui/views/news_view/banner/news_banner.dart';
import 'package:uafrontend/ui/views/news_view/news_list/news_list.dart';
import 'package:uafrontend/ui/views/news_view/news_view_model.dart';

class NewsPage extends ViewModelWidget<NewsViewModel> {
  late BuildContext context;
  late NewsViewModel viewModel;

  NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, NewsViewModel viewModel) {
    if (viewModel.loadingInProgress) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return SingleChildScrollView(
      child: Column(children: [
        NewsBanner(viewModel.content),
        NewsList(viewModel.newsList, viewModel.content)
      ]),
    );
  }
}

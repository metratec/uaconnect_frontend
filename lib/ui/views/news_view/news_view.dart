// import 'package:uafrontend/ui/views/initial_view/authenticated_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/ui/views/news_view/news_page.dart';
import 'package:uafrontend/ui/views/news_view/news_view_model.dart';

class NewsView extends StatelessWidget {
  NewsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewsViewModel>.reactive(
      builder: (context, model, child) =>
          // InitialPage(maxWidth: MediaQuery.of(context).size.width),
          NewsPage(),
      viewModelBuilder: () => NewsViewModel(),
      onModelReady: (model) => model.fetchContent(),
    );
  }
}

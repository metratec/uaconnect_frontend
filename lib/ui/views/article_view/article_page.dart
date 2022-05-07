import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/app/ua_style.dart';
import 'package:uafrontend/datamodels/info_article.dart';
import 'package:uafrontend/ui/views/article_view/article_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:flutter_markdown/flutter_markdown.dart';

class ArticlePage extends ViewModelWidget<ArticleViewModel> {
  late BuildContext context;
  late ArticleViewModel model;

  final InfoArticle selectedArticle;

  ArticlePage(this.selectedArticle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ArticleViewModel viewModel) {
    if (viewModel.loadingInProgress) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return SingleChildScrollView(
      child: Column(children: [
        ArticleWidget(selectedArticle, context, viewModel.content),
      ]),
    );
  }
}

class ArticleWidget extends StatelessWidget {
  ArticleWidget(
    this.selectedArticle,
    this.context,
    this.content, {
    Key? key,
  }) : super(key: key);

  BuildContext context;
  InfoArticle selectedArticle;
  dynamic content;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(this.context).size.width;
    final _navigationService = locator<NavigationService>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Container(
            width: _width / 1.2,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 15.0,
                  ),
                  Text(
                    selectedArticle.heading,
                    style: const TextStyle(
                        fontFamily: "IBM Plex",
                        color: UaColors.darkTextColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 21.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Container(
                      child: MarkdownBody(
                        // controller: controller,
                        selectable: true,
                        data: selectedArticle.fullText,
                        styleSheet: MarkdownStyleSheet(
                          p: const TextStyle(
                              fontSize: 18.0,
                              color: UaColors.darkTextColor,
                              fontFamily: "IBM Plex",
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      _navigationService.back();
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                          width: 1.0, color: UaColors.darkTextColor),
                    ),
                    child: Text(
                      content["ButtonBack"],
                      style: const TextStyle(
                          color: Colors.black,
                          fontFamily: "IBM Plex",
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

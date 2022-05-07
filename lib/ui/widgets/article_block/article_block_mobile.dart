import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/app/app.router.dart';
import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/app/ua_style.dart';
import 'package:uafrontend/datamodels/info_article.dart';

class ArticleBlockMobile extends StatelessWidget {
  final List<InfoArticle> articleList;

  const ArticleBlockMobile(
    this.articleList, {
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: <Widget>[
                for (InfoArticle article in articleList)
                  MobileArticleCard(infoArticle: article, context: context)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileArticleCard extends StatelessWidget {
  MobileArticleCard({
    Key? key,
    required this.context,
    required this.infoArticle,
  }) : super(key: key);

  final BuildContext context;
  final InfoArticle infoArticle;

  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        // height: _width / 4,
        width: _width,
        // decoration: const BoxDecoration(
        //   gradient: UaColors.primaryGradient,
        //   borderRadius: BorderRadius.all(Radius.circular(2.0)),
        // ),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 0.0),
                child: Text(
                  infoArticle.title,
                  style: const TextStyle(
                      fontFamily: "IBM Plex",
                      fontSize: 20.0,
                      color: UaColors.darkTextColor,
                      fontWeight: FontWeight.w800),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  infoArticle.teaser,
                  style: const TextStyle(
                      fontFamily: "IBM Plex",
                      color: UaColors.darkTextColor,
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 15, 5, 5),
                child: OutlinedButton(
                  onPressed: () {
                    _navigationService.navigateTo(Routes.articleView,
                        arguments:
                            ArticleViewArguments(selectedArticle: infoArticle));
                  },
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(
                        width: 1.0, color: UaColors.darkTextColor),
                  ),
                  child: const Text(
                    "Mehr Informationen",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "IBM Plex",
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

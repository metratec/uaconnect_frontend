import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/app/app.router.dart';
import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/app/ua_style.dart';
import 'package:uafrontend/datamodels/newspost.dart';
import 'package:uafrontend/ui/widgets/newspost/news_post.dart';

class NewsListMobile extends StatelessWidget {
  final List<NewsPost> newsList;
  final dynamic content;

  NewsListMobile(
    this.newsList,
    this.content, {
    Key? key,
  }) : super(key: key);

  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: _width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 15.0, right: 10.0, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (NewsPost newsPost in newsList)
                              newsItem(newsPost),
                            const SizedBox(height: 20),
                            OutlinedButton(
                              onPressed: () {
                                _navigationService.navigateTo(Routes.homeView);
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
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

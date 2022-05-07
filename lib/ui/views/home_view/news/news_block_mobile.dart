import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/app/app.router.dart';
import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/app/ua_style.dart';
import 'package:uafrontend/datamodels/newspost.dart';
import 'package:uafrontend/ui/widgets/newspost/news_post.dart';

class NewsOverviewMobile extends StatelessWidget {
  final List<NewsPost> newsList;
  final dynamic content;

  NewsOverviewMobile(
    this.newsList,
    this.content, {
    Key? key,
  }) : super(key: key);

  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40.0),
                      child: Container(
                        width: _width,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 5.0, right: 35.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                content["TitleNews"],
                                style: TextStyle(
                                    fontFamily: "IBM Plex",
                                    color: UaColors.darkTextColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0),
                              ),
                              newsItem(newsList[0]),
                              const SizedBox(
                                height: 10.0,
                              ),
                              OutlinedButton(
                                onPressed: () {
                                  _navigationService
                                      .navigateTo(Routes.newsView);
                                },
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(
                                      width: 1.0,
                                      color: Color.fromARGB(128, 0, 59, 107)),
                                ),
                                child: Text(
                                  content["OldNews"],
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
                    const SizedBox(
                      height: 25.0,
                    )
                  ],
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 40.0,
          // ),
        ],
      ),
    );
  }
}

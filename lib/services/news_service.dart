import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/datamodels/newspost.dart';
import 'package:uafrontend/datamodels/target_group.dart';

// import 'package:uafrontend/services/authentication_service.dart';
// import 'package:uafrontend/services/gql_service.dart';
// import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:uafrontend/services/settings_service.dart';

@lazySingleton
class NewsService {
  SettingsService settingsService = locator<SettingsService>();

  Future<NewsPost> getLatestNews() async {
    List<NewsPost> newsList = await getAllNews();
    return newsList[0];
  }

  Future<List<NewsPost>> getAllNews() async {
    String target = "ref";
    if (settingsService.userGroup == TargetGroup.volunteer) {
      target = "vol";
    }
    final String rawdata = await rootBundle.loadString(
        'assets/docs/news_${target}_${settingsService.currentLanguage.langCode}.json');
    final jsonData = json.decode(rawdata);

    List<NewsPost> newsList = [];
    jsonData.forEach((element) => newsList.add(NewsPost.fromJson(element)));
    return newsList;
  }
}

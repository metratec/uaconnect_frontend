import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/datamodels/info_article.dart';
import 'package:uafrontend/datamodels/language.dart';

// import 'package:uafrontend/services/authentication_service.dart';
// import 'package:uafrontend/services/gql_service.dart';
// import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:uafrontend/services/settings_service.dart';

import '../datamodels/info_section.dart';

@lazySingleton
class InfoarticleService {
  SettingsService settingsService = locator<SettingsService>();

  Future<List<InfoArticle>> getAllInfoArticlesFromSection(
      InfoSection section) async {
    final String response =
        await rootBundle.loadString('assets/docs/infoarticles.json');

    final jsonData = json.decode(response);

    List<InfoArticle> articleList = [];

    jsonData.forEach((articles) {
      if (articles["parent_id"] == section.id) {
        articles["articles"].forEach((article) {
          articleList.add(InfoArticle.fromJson(article));
        });
      }
    });
    return articleList;
  }
}

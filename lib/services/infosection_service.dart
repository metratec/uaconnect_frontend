import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/datamodels/info_section.dart';
import 'package:uafrontend/datamodels/target_group.dart';

// import 'package:uafrontend/services/authentication_service.dart';
// import 'package:uafrontend/services/gql_service.dart';
// import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:uafrontend/services/settings_service.dart';

@lazySingleton
class InfosectionService {
  SettingsService settingsService = locator<SettingsService>();

  Future<List<InfoSection>> getAllInfoSections() async {
    String target = "ref";
    if (settingsService.userGroup == TargetGroup.volunteer) {
      target = "vol";
    }
    final String rawdata = await rootBundle.loadString(
        'assets/docs/infosections_${target}_${settingsService.currentLanguage.langCode}.json');
    final jsonData = json.decode(rawdata);

    List<InfoSection> sectionList = [];
    jsonData
        .forEach((element) => sectionList.add(InfoSection.fromJson(element)));
    return sectionList;
  }
}

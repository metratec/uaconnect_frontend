import 'dart:async';
import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/datamodels/step_data.dart';

// import 'package:uafrontend/services/authentication_service.dart';
// import 'package:uafrontend/services/gql_service.dart';
// import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:uafrontend/services/settings_service.dart';

@lazySingleton
class StepsService {
  SettingsService settingsService = locator<SettingsService>();

  Future<List<StepData>> getAllSteps() async {
    final String response = await rootBundle.loadString(
        'assets/docs/steps_${settingsService.currentLanguage.langCode}.json');
    final jsonData = json.decode(response);

    List<StepData> stepsList = [];
    jsonData.forEach((element) => stepsList.add(StepData.fromJson(element)));
    return stepsList;
  }
}

import 'dart:async';
import 'package:uafrontend/app/locator.dart';
import 'package:injectable/injectable.dart';
import 'package:uafrontend/datamodels/language.dart';
import 'package:uafrontend/datamodels/region.dart';
import 'package:uafrontend/datamodels/target_group.dart';

@lazySingleton
class SettingsService {
  Region userRegion = Region(name: "MD", lat: 52.6, long: 10.2, radius: 50);
  Language userLanguage = Language(langCode: "DE");
  TargetGroup userGroup = TargetGroup.refugee;

  get currentLanguage => userLanguage;
  get currentRegion => userRegion;
  get currentUserGroup => userGroup;

  changeRegion(Region newRegion) {
    userRegion = newRegion;
  }

  changeLanguage(Language newLanguage) {
    userLanguage = newLanguage;
  }

  changeUserGroup(TargetGroup newUserGroup) {
    userGroup = newUserGroup;
  }
}

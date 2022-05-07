import 'package:uafrontend/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/datamodels/language.dart';
import 'package:uafrontend/datamodels/target_group.dart';
import 'package:uafrontend/services/system_string_service.dart';
import 'package:uafrontend/services/settings_service.dart';

class StartViewModel extends BaseViewModel {
  final _snackbarService = locator<SnackbarService>();
  final _sysStrService = locator<SystemStringService>();
  SettingsService settingsService = locator<SettingsService>();

  late String heroHeading;
  late String headerText;
  bool loadingInProgress = true;
  late Language currentLanguage;
  late TargetGroup currentUserGroup;

  late String buttonRef;
  late String buttonVol;

  late dynamic content;

  Future fetchContent() async {
    currentLanguage = await settingsService.currentLanguage;
    currentUserGroup = await settingsService.currentUserGroup;

    content = await _sysStrService.getPageContent("StartView");

    loadingInProgress = false;
    notifyListeners();
  }

  setLanguage(String langCode) async {
    currentLanguage = Language(langCode: langCode);
    settingsService.changeLanguage(currentLanguage);
    await fetchContent();
    notifyListeners();
  }

  setUserGroup(TargetGroup newGroup) async {
    settingsService.changeUserGroup(newGroup);
    await fetchContent();
    notifyListeners();
  }
}

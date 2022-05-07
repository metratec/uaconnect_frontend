import 'package:uafrontend/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'package:uafrontend/services/settings_service.dart';

class LoginViewModel extends BaseViewModel {
  final _snackbarService = locator<SnackbarService>();
  SettingsService settingsService = locator<SettingsService>();

  bool loadingInProgress = true;

  Future fetchContent() async {
    loadingInProgress = false;
    notifyListeners();
  }
}

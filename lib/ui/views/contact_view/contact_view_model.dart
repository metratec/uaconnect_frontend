import 'package:uafrontend/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/datamodels/info_article.dart';
import 'package:uafrontend/services/system_string_service.dart';
import 'package:uafrontend/services/infoarticle_service.dart';

class ContactViewModel extends BaseViewModel {
  final _snackbarService = locator<SnackbarService>();
  final contentService = locator<SystemStringService>();
  final _sysStrService = locator<SystemStringService>();

  late String heroHeading;
  late String headerText;
  bool loadingInProgress = true;
  late dynamic content;

  Future fetchContent() async {
    content = await _sysStrService.getPageContent("ContactView");

    loadingInProgress = false;
    notifyListeners();
  }
}

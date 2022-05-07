import 'package:uafrontend/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/datamodels/info_section.dart';
import 'package:uafrontend/services/system_string_service.dart';
import 'package:uafrontend/services/infosection_service.dart';

class InfoViewModel extends BaseViewModel {
  final _snackbarService = locator<SnackbarService>();
  final _sysStrService = locator<SystemStringService>();
  final sectionService = locator<InfosectionService>();

  late String heroHeading;
  late String headerText;
  late List<InfoSection> sectionList;
  bool loadingInProgress = true;
  late dynamic content;

  Future fetchContent() async {
    sectionList = await sectionService.getAllInfoSections();

    content = await _sysStrService.getPageContent("InfoView");

    loadingInProgress = false;
    notifyListeners();
  }
}

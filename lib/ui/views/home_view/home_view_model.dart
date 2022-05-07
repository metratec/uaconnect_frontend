import 'package:uafrontend/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/datamodels/info_section.dart';
import 'package:uafrontend/datamodels/newspost.dart';
import 'package:uafrontend/services/system_string_service.dart';
import 'package:uafrontend/services/infosection_service.dart';
import 'package:uafrontend/services/news_service.dart';

class HomeViewModel extends BaseViewModel {
  final _snackbarService = locator<SnackbarService>();
  final _sysStrService = locator<SystemStringService>();
  final newsService = locator<NewsService>();
  final sectionService = locator<InfosectionService>();

  late String bannerHeading;
  late String bannerContent;
  late List<NewsPost> newsList;
  List<InfoSection> sectionList = [];
  bool loadingInProgress = true;
  late dynamic content;

  Future fetchContent() async {
    newsList = [await newsService.getLatestNews()];
    sectionList = await sectionService.getAllInfoSections();

    content = await _sysStrService.getPageContent("HomeView");

    loadingInProgress = false;
    notifyListeners();
  }
}

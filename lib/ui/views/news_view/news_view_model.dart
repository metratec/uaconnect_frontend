import 'package:uafrontend/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/datamodels/newspost.dart';
import 'package:uafrontend/services/system_string_service.dart';
import 'package:uafrontend/services/news_service.dart';

class NewsViewModel extends BaseViewModel {
  final _snackbarService = locator<SnackbarService>();
  final _sysStrService = locator<SystemStringService>();
  final newsService = locator<NewsService>();

  late String newsBannerHeading;
  late String newsBannerText;
  late List<NewsPost> newsList;
  bool loadingInProgress = true;
  late dynamic content;

  Future fetchContent() async {
    newsList = await newsService.getAllNews();

    content = await _sysStrService.getPageContent("NewsView");

    loadingInProgress = false;
    notifyListeners();
  }
}

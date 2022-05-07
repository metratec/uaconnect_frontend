import 'package:uafrontend/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/datamodels/info_article.dart';
import 'package:uafrontend/datamodels/info_section.dart';
import 'package:uafrontend/services/system_string_service.dart';
import 'package:uafrontend/services/infoarticle_service.dart';

class SectionViewModel extends BaseViewModel {
  final _snackbarService = locator<SnackbarService>();
  final _sysStrService = locator<SystemStringService>();
  final articleService = locator<InfoarticleService>();

  late String heroHeading;
  late String headerText;
  List<InfoArticle> articleList = [];
  bool loadingInProgress = true;
  late dynamic content;

  final InfoSection selectedSection;

  SectionViewModel(this.selectedSection);

  Future fetchContent() async {
    articleList =
        await articleService.getAllInfoArticlesFromSection(selectedSection);

    content = await _sysStrService.getPageContent("SectionView");

    loadingInProgress = false;
    notifyListeners();
  }
}

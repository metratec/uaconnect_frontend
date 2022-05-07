import 'package:uafrontend/app/locator.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/datamodels/newspost.dart';
import 'package:uafrontend/datamodels/step_data.dart';
import 'package:uafrontend/services/system_string_service.dart';
import 'package:uafrontend/services/steps_service.dart';

class StepsViewModel extends BaseViewModel {
  final _snackbarService = locator<SnackbarService>();
  final _sysStrService = locator<SystemStringService>();
  final stepsService = locator<StepsService>();

  late String stepsBannerHeading;
  late String stepsBannerText;
  late List<NewsPost> newsList;
  bool loadingInProgress = true;
  late dynamic content;

  int currentStepIndex = 0;
  late List<StepData> stepList;

  Future fetchContent() async {
    content = await _sysStrService.getPageContent("StepsView");

    stepList = await stepsService.getAllSteps();

    loadingInProgress = false;
    notifyListeners();
  }

  // This function will be called when the continue button is tapped
  stepContinue() {
    currentStepIndex < stepList.length - 1 ? currentStepIndex += 1 : null;
    notifyListeners();
  }

  // This function will be called when the cancel button is tapped
  stepCancel() {
    currentStepIndex > 0 ? currentStepIndex -= 1 : null;
    notifyListeners();
  }

  stepTapped(int step) {
    currentStepIndex = step;
    notifyListeners();
  }
}

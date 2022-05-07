import 'package:flutter/gestures.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/app/app.router.dart';
import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/app/ua_style.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/datamodels/target_group.dart';
import 'package:uafrontend/ui/views/start_view/start_view_model.dart';

class StartPage extends ViewModelWidget<StartViewModel> {
  // late BuildContext context;
  // late StartViewModel viewModel;

  StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, StartViewModel viewModel) {
    if (viewModel.loadingInProgress) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return SingleChildScrollView(
      child: Column(children: [
        LanguageSelection(viewModel),
        TargetGroupSelection(viewModel),
      ]),
    );
  }
}

class TargetGroupSelection extends StatelessWidget {
  TargetGroupSelection(
    this.viewModel, {
    Key? key,
  }) : super(key: key);

  StartViewModel viewModel;

  setUserGroup(TargetGroup group) {
    viewModel.setUserGroup(group);
  }

  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  setUserGroup(TargetGroup.refugee);
                  _navigationService.navigateTo(Routes.homeView);
                },
                child: Container(
                  // height: 70,
                  width: 370.0,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 230, 236, 242),
                      borderRadius:
                          BorderRadius.all(const Radius.circular(5.0))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        viewModel.content['ButtonRef'],
                        style: const TextStyle(
                            color: UaColors.darkTextColor,
                            fontFamily: "IBM Plex",
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 30.0,
            ),
            InkWell(
                onTap: () {
                  setUserGroup(TargetGroup.volunteer);
                  _navigationService.navigateTo(Routes.homeView);
                },
                child: Container(
                  //height: 70.0,
                  width: 370.0,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 185, 199, 215),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Text(
                        viewModel.content['ButtonVol'],
                        style: const TextStyle(
                            color: UaColors.darkTextColor,
                            fontFamily: "IBM Plex",
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ],
    );
  }
}

class LanguageSelection extends StatelessWidget {
  LanguageSelection(
    this.viewModel, {
    Key? key,
  }) : super(key: key);

  StartViewModel viewModel;

  setLanguage(String langCode) {
    viewModel.setLanguage(langCode);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 75),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 45.0,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                setLanguage("UA");
              },
              child: const CircleAvatar(
                radius: 36,
                backgroundColor: UaColors.darkBlue,
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/ua_round.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
                onTap: () {
                  setLanguage("RU");
                },
                child: const CircleAvatar(
                  radius: 36,
                  backgroundColor: UaColors.darkBlue,
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage('assets/images/ru_round.png'),
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                setLanguage("EN");
              },
              child: const CircleAvatar(
                radius: 36,
                backgroundColor: UaColors.darkBlue,
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/en_round.png'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                setLanguage("DE");
              },
              child: const CircleAvatar(
                radius: 36,
                backgroundColor: UaColors.darkBlue,
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images/de_round.png'),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 45.0,
          ),
        ],
      ),
    );
  }
}

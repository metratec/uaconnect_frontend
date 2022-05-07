import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/app/app.router.dart';
import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/app/ua_style.dart';

class MainBannerMobile extends StatelessWidget {
  final dynamic content;

  const MainBannerMobile(
    this.content, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    final _navigationService = locator<NavigationService>();

    return SingleChildScrollView(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: _width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      // Container(
                      //   height: 400.0,
                      //   width: _width,
                      //   decoration: BoxDecoration(
                      //       image: DecorationImage(
                      //           image:
                      //               AssetImage("assets/images/imageHeader.png"),
                      //           fit: BoxFit.cover)),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 40.0, top: 15.0, right: 10.0, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Text(
                            //   "Our Goal",
                            //   style: TextStyle(
                            //       fontFamily: "IBM Plex",
                            //       color: Colors.black26,
                            //       fontWeight: FontWeight.w500,
                            //       fontSize: 19.0),
                            // ),
                            // SizedBox(
                            //   height: 5.0,
                            // ),
                            Text(
                              content["BannerHeading"],
                              style: const TextStyle(
                                  fontFamily: "IBM Plex",
                                  color: UaColors.darkTextColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 35.0),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Text(
                                content["BannerContent"],
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    color: UaColors.mediumTextColor,
                                    fontFamily: "IBM Plex",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            InkWell(
                              onTap: () {
                                _navigationService.navigateTo(Routes.stepsView);
                              },
                              child: Container(
                                height: 40.0,
                                width: 155.0,
                                decoration: const BoxDecoration(
                                    gradient: UaColors.attentionGradient,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Center(
                                  child: Text(
                                    content["NextSteps"],
                                    style: const TextStyle(
                                        color: UaColors.darkTextColor,
                                        fontFamily: "IBM Plex",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 30.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

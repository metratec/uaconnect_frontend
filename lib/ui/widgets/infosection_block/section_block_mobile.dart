import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/app/app.router.dart';
import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/app/ua_style.dart';
import 'package:uafrontend/datamodels/info_section.dart';

class InfoSectionBlockMobile extends StatelessWidget {
  final List sectionList;

  const InfoSectionBlockMobile(
    this.sectionList, {
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    // double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        color: UaColors.darkBlue,
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20, right: 0.0, bottom: 0.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
// TODO something with gridlists, I guess :-D

                      // Column(
                      //   children: [
                      //     for (InfoSection section in sectionList)
                      //       MobileInfoCard(
                      //         infoSection: section,
                      //         context: context,
                      //       ),
                      //   ],
                      // ),

                      Column(
                        children: [
                          MobileInfoCard(
                              infoSection: sectionList[0], context: context),
                          MobileInfoCard(
                              infoSection: sectionList[1], context: context),
                        ],
                      ),
                      Column(
                        children: [
                          MobileInfoCard(
                              infoSection: sectionList[2], context: context),
                          MobileInfoCard(
                              infoSection: sectionList[3], context: context),
                        ],
                      ),

//
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileInfoCard extends StatelessWidget {
  MobileInfoCard({
    Key? key,
    required this.context,
    required this.infoSection,
  }) : super(key: key);

  final BuildContext context;
  final InfoSection infoSection;

  final _navigationService = locator<NavigationService>();

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: GestureDetector(
        onTap: () {
          _navigationService.navigateTo(Routes.sectionView,
              arguments: SectionViewArguments(selectedSection: infoSection));
        },
        child: Container(
          height: _width / 4,
          width: _width / 2.5,
          decoration: const BoxDecoration(
            gradient: UaColors.primaryGradient,
            borderRadius: BorderRadius.all(Radius.circular(2.0)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 0.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Text(
                    infoSection.title,
                    style: const TextStyle(
                        fontFamily: "IBM Plex",
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                // const SizedBox(
                //   height: 10.0,
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(right: 10.0),
                //   child: Text(
                //     infoSection.teaser,
                //     style: const TextStyle(
                //         fontFamily: "IBM Plex",
                //         color: Colors.white70,
                //         fontWeight: FontWeight.w400),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

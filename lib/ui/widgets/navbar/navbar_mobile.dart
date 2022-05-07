import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/app/app.router.dart';
import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/ui/widgets/navbar/navbar.dart';
import 'package:uafrontend/ui/widgets/navbar/navbar_item.dart';

class MobileNavbar extends StatefulWidget {
  MobileNavbar({Key? key}) : super(key: key);

  @override
  _MobileNavbarState createState() => _MobileNavbarState();
}

final _navigationService = locator<NavigationService>();

class _MobileNavbarState extends State<MobileNavbar> {
  @override
  Color color = notSelected;
  FontWeight fontWeight = notSelectedFW;
  Color color2 = notSelected2;
  FontWeight fontWeight2 = notSelectedFW2;
  Color color3 = notSelected3;
  FontWeight fontWeight3 = notSelectedFW3;
  Color color4 = notSelected4;
  FontWeight fontWeight4 = notSelectedFW4;

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          color: Colors.white,
        ),
        AnimatedContainer(
          margin: EdgeInsets.only(top: 79.0),
          duration: Duration(milliseconds: 375),
          curve: Curves.ease,
          height: (width < 800.0) ? collapsableHeight : 0.0,
          width: double.infinity,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                MouseRegion(
                  onEnter: (value) {
                    setState(() {
                      color = selected;
                      fontWeight = selectedFW;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      color = notSelected;
                      fontWeight = notSelectedFW;
                    });
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.white60,
                      onTap: () {
                        _navigationService.navigateTo(Routes.stepsView);
                      },
                      child: Container(
                        height: 50.0,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 14.0),
                        child: Text(
                          "Nächste Schritte",
                          style: TextStyle(
                            fontFamily: "IBM Plex",
                            fontWeight: fontWeight,
                            fontSize: 16.0,
                            color: color,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (value) {
                    setState(() {
                      color2 = selected2;
                      fontWeight2 = selectedFW2;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      color2 = notSelected2;
                      fontWeight2 = notSelectedFW2;
                    });
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.white60,
                      onTap: () {
                        _navigationService.navigateTo(Routes.newsView);
                      },
                      child: Container(
                        height: 50.0,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 14.0),
                        child: Text(
                          "Neuigkeiten",
                          style: TextStyle(
                            fontFamily: "IBM Plex",
                            fontWeight: fontWeight2,
                            fontSize: 16.0,
                            color: color2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (value) {
                    setState(() {
                      color3 = selected3;
                      fontWeight3 = selectedFW3;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      color3 = notSelected3;
                      fontWeight3 = notSelectedFW3;
                    });
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.white60,
                      onTap: () {
                        _navigationService.navigateTo(Routes.infoView);
                      },
                      child: Container(
                        height: 50.0,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 14.0),
                        child: Text(
                          "Informationen",
                          style: TextStyle(
                            fontFamily: "IBM Plex",
                            fontWeight: fontWeight3,
                            fontSize: 16.0,
                            color: color3,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (value) {
                    setState(() {
                      color4 = selected4;
                      fontWeight4 = selectedFW4;
                    });
                  },
                  onExit: (value) {
                    setState(() {
                      color4 = notSelected4;
                      fontWeight4 = notSelectedFW4;
                    });
                  },
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.white60,
                      onTap: () {
                        _navigationService.navigateTo(Routes.contactView);
                      },
                      child: Container(
                        height: 50.0,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.symmetric(horizontal: 14.0),
                        child: Text(
                          "Kontakt",
                          style: TextStyle(
                            fontFamily: "IBM Plex",
                            fontWeight: fontWeight4,
                            fontSize: 16.0,
                            color: color4,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.white,
          height: 80.0,
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  _navigationService.navigateTo(Routes.homeView);
                },
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      height: 50.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    // Text(
                    //   "UA Connect",
                    //   style: TextStyle(
                    //       fontFamily: "IBM Plex",
                    //       fontWeight: FontWeight.w700,
                    //       color: Colors.black87,
                    //       fontSize: 18),
                    // ),
                  ],
                ),
              ),
              LayoutBuilder(builder: (context, constraints) {
                if (width < 800.0) {
                  return NavBarButton(
                    onPressed: () {
                      if (collapsableHeight == 0.0) {
                        setState(() {
                          collapsableHeight = 240.0;
                        });
                      } else if (collapsableHeight == 240.0) {
                        setState(() {
                          collapsableHeight = 0.0;
                        });
                      }
                    },
                  );
                } else {
                  return Row(
                    children: navBarItems,
                  );
                }
              })
            ],
          ),
        ),
      ],
    );
  }
}

List<NavBarItem> navBarItems = [
  NavBarItem(
    text: 'Home',
  ),
  NavBarItem(
    text: 'Nächste Schritte',
  ),
  NavBarItem(
    text: 'Neuigkeiten',
  ),
  NavBarItem(
    text: 'Informationen',
  ),
  NavBarItem(
    text: 'Kontakt',
  ),
];

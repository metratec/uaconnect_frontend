import 'package:flutter/material.dart';
import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/app/ua_style.dart';
import 'package:uafrontend/datamodels/language.dart';
import 'package:uafrontend/services/settings_service.dart';
import 'package:uafrontend/ui/widgets/navbar/navbar.dart';

class DesktopNavbar extends StatefulWidget {
  DesktopNavbar({Key? key}) : super(key: key);

  @override
  _DesktopNavbarState createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  Color color = notSelected;
  FontWeight fontWeight = notSelectedFW;
  Color color2 = notSelected2;
  FontWeight fontWeight2 = notSelectedFW2;
  Color color3 = notSelected3;
  FontWeight fontWeight3 = notSelectedFW3;
  Color color4 = notSelected4;
  FontWeight fontWeight4 = notSelectedFW4;

  SettingsService settingsService = locator<SettingsService>();

  setLanguage(Language lang) {
    setState(() {
      settingsService.changeLanguage(lang);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: [
                // Image.asset(
                //   "assets/image/logo.png",
                //   height: 25.0,
                // ),
                // SizedBox(
                //   width: 10.0,logo
                // ),
                Text(
                  "UA Connect",
                  style: TextStyle(
                      fontFamily: "IBM Plex",
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                      fontSize: 18),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(PageRouteBuilder(
                    //     pageBuilder: (_, __, ___) => new HomeScreenT1()));
                  },
                  child: MouseRegion(
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
                    child: Text(
                      "Home",
                      style: TextStyle(
                          fontFamily: "IBM Plex",
                          fontWeight: fontWeight,
                          color: color,
                          fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                InkWell(
                  onTap: () {
                    setLanguage(Language(langCode: "DE"));
                    // Navigator.of(context).push(PageRouteBuilder(
                    //     pageBuilder: (_, __, ___) => new AboutusScreenT2()));
                  },
                  child: MouseRegion(
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
                    child: Text(
                      "DE",
                      style: TextStyle(
                          fontFamily: "IBM Plex",
                          fontWeight: fontWeight2,
                          color: color2,
                          fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
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
                  child: InkWell(
                    onTap: () {
                      setLanguage(Language(langCode: "EN"));
                      // Navigator.of(context).push(PageRouteBuilder(
                      //     pageBuilder: (_, __, ___) => new ServiceScreen()));
                    },
                    child: Text(
                      "EN",
                      style: TextStyle(
                          fontFamily: "IBM Plex",
                          fontWeight: fontWeight3,
                          color: color3,
                          fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  width: 45,
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
                  child: InkWell(
                    onTap: () {
                      // Navigator.of(context).push(PageRouteBuilder(
                      //     pageBuilder: (_, __, ___) => new PortofolioScreen()));
                    },
                    child: Text(
                      "Portfolio",
                      style: TextStyle(
                          fontFamily: "IBM Plex",
                          fontWeight: fontWeight4,
                          color: color4,
                          fontSize: 14),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {
                    // Navigator.of(context).push(PageRouteBuilder(
                    //     pageBuilder: (_, __, ___) => new ContactUs()));
                  },
                  child: Container(
                    height: 35.0,
                    width: 115.0,
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: UaColors.mainColor, width: 1.5),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Center(
                      child: Text(
                        "Contact us",
                        style: TextStyle(
                            fontFamily: "IBM Plex",
                            fontWeight: FontWeight.w500,
                            color: UaColors.mainColor,
                            fontSize: 14),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

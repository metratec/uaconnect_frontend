import 'package:flutter/material.dart';
import 'package:uafrontend/datamodels/newspost.dart';

class NewsOverviewDesktop extends StatelessWidget {
  final List<NewsPost> newsList;

  const NewsOverviewDesktop(
    this.newsList, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 178.0, left: 250.0),
                child: Image.asset("assets/image/item1.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Image.asset(
                  "assets/image/item2.png",
                  height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height - 175, left: 450),
                child: Image.asset(
                  "assets/image/item3.png",
                  //height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 550),
                child: Image.asset(
                  "assets/image/item4.png",
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 450.0,
                    width: _width / 2.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 12.0,
                            spreadRadius: 4.0,
                            color: Colors.black12,
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage("assets/image/design.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 75,
                      width: _width / 2.2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Design solutions to improve products",
                              style: TextStyle(
                                  fontFamily: "IBM Plex",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                "We help our clients make realize their most important business goals. We help our clients make realize their most important business goals. business goals. We help our clients make realize their most important business.",
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                    fontFamily: "IBM Plex",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                height: 40.0,
                                width: 155.0,
                                decoration: BoxDecoration(
                                    // gradient: colors.primaryGradient,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0))),
                                child: Center(
                                  child: Text(
                                    "KNOW MORE",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "IBM Plex",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0.0),
                child: Image.asset(
                  "assets/image/item2.png",
                  height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height - 175, left: 450),
                child: Image.asset(
                  "assets/image/item3.png",
                  //height: MediaQuery.of(context).size.height - 175,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 25, left: 550),
                child: Image.asset(
                  "assets/image/item4.png",
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 55.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height - 75,
                      width: _width / 2.2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 35.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              "Neuigkeiten",
                              style: TextStyle(
                                  fontFamily: "IBM Plex",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 42.0),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "22. März 2022",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.blueGrey,
                                        fontFamily: "IBM Plex",
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Ab morgen gibt es in der MH3 kostenloses WLAN. Einwahl geschieht über den Access Point MesseLAN. Das Passwort finden Sie ausgedruckt an der Pinwand.",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black38,
                                        fontFamily: "IBM Plex",
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "#Messehalle #Internet",
                                    style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.blueAccent,
                                        fontFamily: "IBM Plex",
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              height: 30.0,
                            ),
                            // InkWell(
                            //   onTap: () {
                            //     _launchURL();
                            //   },
                            //   child: Container(
                            //     height: 40.0,
                            //     width: 155.0,
                            //     decoration: BoxDecoration(
                            //         gradient: colors.primaryGradient,
                            //         borderRadius: BorderRadius.all(
                            //             Radius.circular(20.0))),
                            //     child: Center(
                            //       child: Text(
                            //         "KNOW MORE",
                            //         style: TextStyle(
                            //             color: colors.white,
                            //             fontFamily: "IBM Plex",
                            //             fontWeight: FontWeight.w500,
                            //             fontSize: 14),
                            //       ),
                            //     ),
                            //   ),
                            // )
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   height: 450.0,
                  //   width: _width / 2.2,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.only(
                  //           topLeft: Radius.circular(20.0),
                  //           bottomLeft: Radius.circular(20.0)),
                  //       boxShadow: [
                  //         BoxShadow(
                  //           blurRadius: 12.0,
                  //           spreadRadius: 4.0,
                  //           color: Colors.black12,
                  //         )
                  //       ],
                  //       image: DecorationImage(
                  //           image: AssetImage("assets/image/develop.jpeg"),
                  //           fit: BoxFit.cover)),
                  // ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

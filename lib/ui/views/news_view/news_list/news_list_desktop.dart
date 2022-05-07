import 'package:flutter/material.dart';
import 'package:uafrontend/app/ua_style.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:uafrontend/datamodels/newspost.dart';

class NewsListDesktop extends StatelessWidget {
  const NewsListDesktop(this.newsList, {Key? key}) : super(key: key);

  final List<NewsPost> newsList;
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 178.0, left: 50.0),
            child: Image.asset("assets/images/item1.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Image.asset(
              "assets/images/item2.png",
              height: MediaQuery.of(context).size.height - 175,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height - 175, left: 450),
            child: Image.asset(
              "assets/images/item3.png",
              //height: MediaQuery.of(context).size.height - 175,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 550),
            child: Image.asset(
              "assets/images/item4.png",
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
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Our Goal",
                          style: TextStyle(
                              fontFamily: "IBM Plex",
                              color: Colors.black26,
                              fontWeight: FontWeight.w500,
                              fontSize: 19.0),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "heroHeader",
                          style: TextStyle(
                              fontFamily: "IBM Plex",
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 42.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20.0),
                          child: Container(
                            constraints: BoxConstraints(
                              maxHeight: 200,
                            ),
                            child: Markdown(
                              // controller: controller,
                              selectable: true,
                              data: "headerText",
                              styleSheet: MarkdownStyleSheet(
                                p: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black38,
                                    fontFamily: "IBM Plex",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          // Text(
                          //   headerText,
                          //   style: TextStyle(
                          //       fontSize: 18.0,
                          //       color: Colors.black38,
                          //       fontFamily: "IBM Plex",
                          //       fontWeight: FontWeight.w500),
                          // ),
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
                                gradient: UaColors.primaryGradient,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0))),
                            child: Center(
                              child: Text(
                                "GET STARTED",
                                style: TextStyle(
                                    color: UaColors.white,
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
              Container(
                height: MediaQuery.of(context).size.height - 75,
                width: _width / 2.2,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/imageHeader.png"),
                        fit: BoxFit.cover)),
              )
            ],
          ),
        ],
      ),
    );
  }
}

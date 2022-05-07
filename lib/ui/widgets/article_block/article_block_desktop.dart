import 'package:flutter/material.dart';

class ArticleBlockDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFF31295D),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 48.0, left: 50.0),
              child: Image.asset("assets/image/itemWhite1.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 190.0, left: 550.0),
              child: Image.asset(
                "assets/image/itemWhite2.png",
                height: 65,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 525, left: 10),
              child: Image.asset(
                "assets/image/itemWhite3.png",
                //height: MediaQuery.of(context).size.height - 175,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0),
                          child: Image.asset(
                            "assets/image/itemWhite4.png",
                            height: 12,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 34.0,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 30.0, bottom: 40.0),
                          child: Text(
                            "Services",
                            style: TextStyle(
                                fontFamily: "IBM Plex",
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontSize: 42.0),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0, bottom: 70.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          desktopCard(
                              img: "assets/image/design.png",
                              title: "Designing Application",
                              desc: "We design your mobile and website",
                              context: context),
                          desktopCard(
                              img: "assets/image/coding.png",
                              title: "Android Development",
                              desc:
                                  "We create your android application with android studio",
                              context: context),
                        ],
                      ),
                      Column(
                        children: [
                          desktopCard(
                              img: "assets/image/bug.png",
                              title: "Testing & QA",
                              desc: "We can testing your mobile and website",
                              context: context),
                          desktopCard(
                              img: "assets/image/ai.png",
                              title: "IOS Development",
                              desc: "We create your IOS application with swift",
                              context: context),
                        ],
                      ),
                      Column(
                        children: [
                          desktopCard(
                              img: "assets/image/design.png",
                              title: "Web Development",
                              desc: "We can create your website",
                              context: context),
                          desktopCard(
                              img: "assets/image/coding.png",
                              title: "Project Management",
                              desc:
                                  "We can manage your mobile and website application",
                              context: context),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class desktopCard extends StatelessWidget {
  const desktopCard({
    Key? key,
    required this.img,
    required this.title,
    required this.desc,
    required this.context,
  }) : super(key: key);

  final String img;
  final title;
  final desc;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        height: 170.0,
        width: _width / 4.38,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                img,
                height: 25.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                title,
                style: TextStyle(
                    fontFamily: "IBM Plex",
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  desc,
                  style: TextStyle(
                      fontFamily: "IBM Plex",
                      color: Colors.white54,
                      fontWeight: FontWeight.w300),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

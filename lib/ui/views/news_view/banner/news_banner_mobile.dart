import 'package:flutter/material.dart';
import 'package:uafrontend/app/ua_style.dart';

class NewsBannerMobile extends StatelessWidget {
  final dynamic content;

  const NewsBannerMobile(
    this.content, {
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: UaColors.primaryGradient,
                  ),
                  width: _width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, top: 15.0, right: 10.0, bottom: 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              content["BannerHeading"],
                              style: const TextStyle(
                                  fontFamily: "IBM Plex",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 35.0),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 20.0),
                              child: Text(
                                content["BannerContent"],
                                style: const TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white70,
                                    fontFamily: "IBM Plex",
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
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

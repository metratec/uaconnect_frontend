import 'package:flutter/material.dart';
import 'package:uafrontend/ui/widgets/standard_banner/standard_banner_desktop.dart';
import 'package:uafrontend/ui/widgets/standard_banner/standard_banner_mobile.dart';

class StandardBanner extends StatelessWidget {
  StandardBanner(this.heroHeader, this.headerText, {Key? key})
      : super(key: key);
  final String heroHeader;
  final String headerText;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return StandardBannerDesktop(heroHeader, headerText);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return StandardBannerDesktop(heroHeader, headerText);
        } else {
          return StandardBannerMobile(heroHeader, headerText);
        }
      },
    );
  }
}

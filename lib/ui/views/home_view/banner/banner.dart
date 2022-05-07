import 'package:flutter/material.dart';
import 'package:uafrontend/ui/views/home_view/banner/banner_desktop.dart';
import 'package:uafrontend/ui/views/home_view/banner/banner_mobile.dart';

class MainBanner extends StatelessWidget {
  const MainBanner(this.content, {Key? key}) : super(key: key);
  final dynamic content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return MainBannerMobile(content);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return MainBannerMobile(content);
        } else {
          return MainBannerMobile(content);
        }
      },
    );
  }
}

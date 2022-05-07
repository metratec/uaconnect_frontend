import 'package:flutter/material.dart';
import 'package:uafrontend/ui/views/news_view/banner/news_banner_desktop.dart';
import 'package:uafrontend/ui/views/news_view/banner/news_banner_mobile.dart';

class NewsBanner extends StatelessWidget {
  const NewsBanner(this.content, {Key? key}) : super(key: key);

  final dynamic content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return NewsBannerMobile(content);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return NewsBannerMobile(content);
        } else {
          return NewsBannerMobile(content);
        }
      },
    );
  }
}

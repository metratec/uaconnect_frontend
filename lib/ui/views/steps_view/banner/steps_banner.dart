import 'package:flutter/material.dart';

import 'package:uafrontend/ui/views/steps_view/banner/steps_banner_desktop.dart';
import 'package:uafrontend/ui/views/steps_view/banner/steps_banner_mobile.dart';

class StepsBanner extends StatelessWidget {
  const StepsBanner(this.content, {Key? key}) : super(key: key);

  final dynamic content;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return StepsBannerMobile(content);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return StepsBannerMobile(content);
        } else {
          return StepsBannerMobile(content);
        }
      },
    );
  }
}

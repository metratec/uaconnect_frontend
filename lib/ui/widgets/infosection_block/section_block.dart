import 'package:flutter/material.dart';
import 'package:uafrontend/ui/widgets/infosection_block/section_block_desktop.dart';
import 'package:uafrontend/ui/widgets/infosection_block/section_block_mobile.dart';

class InfoSectionBlock extends StatelessWidget {
  const InfoSectionBlock(this.sectionList, {Key? key}) : super(key: key);

  final List sectionList;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return InfoSectionBlockMobile(sectionList);
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return InfoSectionBlockMobile(sectionList);
        } else {
          return InfoSectionBlockMobile(sectionList);
        }
      },
    );
  }
}

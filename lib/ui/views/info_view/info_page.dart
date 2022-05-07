import 'package:uafrontend/ui/views/info_view/info_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/ui/widgets/infosection_block/section_block.dart';
import 'package:uafrontend/ui/widgets/standard_banner/standard_banner.dart';

class InfoPage extends ViewModelWidget<InfoViewModel> {
  late BuildContext context;
  late InfoViewModel model;

  InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, InfoViewModel viewModel) {
    if (viewModel.loadingInProgress) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return SingleChildScrollView(
      child: Column(children: [
        StandardBanner(viewModel.heroHeading, viewModel.headerText),
        InfoSectionBlock(viewModel.sectionList)
      ]),
    );
  }
}

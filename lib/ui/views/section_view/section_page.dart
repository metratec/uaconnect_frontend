import 'package:uafrontend/datamodels/info_section.dart';
import 'package:uafrontend/ui/views/info_view/info_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/ui/views/section_view/section_view_model.dart';
import 'package:uafrontend/ui/widgets/article_block/article_block.dart';
import 'package:uafrontend/ui/widgets/standard_banner/standard_banner.dart';

class SectionPage extends ViewModelWidget<SectionViewModel> {
  late BuildContext context;
  late InfoViewModel model;

  final InfoSection selectedSection;

  SectionPage(this.selectedSection, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, SectionViewModel viewModel) {
    if (viewModel.loadingInProgress) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return SingleChildScrollView(
      child: Column(children: [
        StandardBanner(selectedSection.title, selectedSection.teaser),
        ArticleBlock(viewModel.articleList)
      ]),
    );
  }
}

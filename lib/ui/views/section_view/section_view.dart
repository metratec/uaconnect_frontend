import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/datamodels/info_section.dart';
import 'package:uafrontend/ui/views/section_view/section_page.dart';
import 'package:uafrontend/ui/views/section_view/section_view_model.dart';

class SectionView extends StatelessWidget {
  const SectionView({Key? key, required this.selectedSection})
      : super(key: key);

  final InfoSection selectedSection;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SectionViewModel>.reactive(
      builder: (context, model, child) => SectionPage(selectedSection),
      viewModelBuilder: () => SectionViewModel(selectedSection),
      onModelReady: (model) => model.fetchContent(),
    );
  }
}

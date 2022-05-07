import 'package:uafrontend/ui/views/info_view/info_page.dart';
import 'package:uafrontend/ui/views/info_view/info_view_model.dart';
// import 'package:uafrontend/ui/views/initial_view/authenticated_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class InfoView extends StatelessWidget {
  InfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<InfoViewModel>.reactive(
      builder: (context, model, child) => InfoPage(),
      viewModelBuilder: () => InfoViewModel(),
      onModelReady: (model) => model.fetchContent(),
    );
  }
}

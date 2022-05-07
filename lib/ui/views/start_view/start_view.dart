import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/ui/views/start_view/start_page.dart';
import 'package:uafrontend/ui/views/start_view/start_view_model.dart';

class StartView extends StatelessWidget {
  const StartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartViewModel>.reactive(
      builder: (context, model, child) => StartPage(),
      viewModelBuilder: () => StartViewModel(),
      onModelReady: (model) => model.fetchContent(),
    );
  }
}

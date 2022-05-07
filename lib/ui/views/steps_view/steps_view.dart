// import 'package:uafrontend/ui/views/initial_view/authenticated_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/ui/views/steps_view/steps_page.dart';
import 'package:uafrontend/ui/views/steps_view/steps_view_model.dart';

class StepsView extends StatelessWidget {
  const StepsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StepsViewModel>.reactive(
      builder: (context, model, child) =>
          // InitialPage(maxWidth: MediaQuery.of(context).size.width),
          StepsPage(),
      viewModelBuilder: () => StepsViewModel(),
      onModelReady: (model) => model.fetchContent(),
    );
  }
}

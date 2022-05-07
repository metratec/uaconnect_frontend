import 'package:uafrontend/ui/views/home_view/banner/banner.dart';
import 'package:uafrontend/ui/views/home_view/home_page.dart';
import 'package:uafrontend/ui/views/home_view/home_view_model.dart';
// import 'package:uafrontend/ui/views/initial_view/authenticated_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) =>
          // InitialPage(maxWidth: MediaQuery.of(context).size.width),
          HomePage(),
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.fetchContent(),
    );
  }
}

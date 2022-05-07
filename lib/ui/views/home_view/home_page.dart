import 'package:uafrontend/ui/views/home_view/news/news_block.dart';
import 'package:uafrontend/ui/views/home_view/banner/banner.dart';
import 'package:uafrontend/ui/views/home_view/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/ui/widgets/infosection_block/section_block.dart';
// import 'package:uafrontend/ui/widgets/wave_block.dart';

class HomePage extends ViewModelWidget<HomeViewModel> {
  late BuildContext context;
  late HomeViewModel viewModel;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    this.context = context;
    this.viewModel = viewModel;

    if (viewModel.loadingInProgress) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return SingleChildScrollView(
      child: Column(children: [
        MainBanner(viewModel.content),
        // WaveBlock(),
        Image.asset(
          "assets/images/wave.png",
          // height: 60.0,
        ),
        NewsOverview(viewModel.newsList, viewModel.content),
        InfoSectionBlock(viewModel.sectionList)
      ]),
    );
  }
}

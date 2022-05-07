import 'package:uafrontend/app/ua_style.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/ui/views/contact_view/contact_view_model.dart';
import 'package:uafrontend/ui/widgets/standard_banner/standard_banner.dart';

class ContactPage extends ViewModelWidget<ContactViewModel> {
  late BuildContext context;
  late ContactViewModel model;

  ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ContactViewModel viewModel) {
    if (viewModel.loadingInProgress) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return SingleChildScrollView(
      child: Column(children: [
        StandardBanner("Kontakt", ""),
      ]),
    );
  }
}

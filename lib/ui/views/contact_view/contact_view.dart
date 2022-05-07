import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/ui/views/contact_view/contact_page.dart';
import 'package:uafrontend/ui/views/contact_view/contact_view_model.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ContactViewModel>.reactive(
      builder: (context, model, child) => ContactPage(),
      viewModelBuilder: () => ContactViewModel(),
      onModelReady: (model) => model.fetchContent(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:uafrontend/ui/views/login_view/login_page.dart';
import 'package:uafrontend/ui/views/login_view/login_view_model.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      builder: (context, model, child) => LoginPage(),
      viewModelBuilder: () => LoginViewModel(),
      onModelReady: (model) => model.fetchContent(),
    );
  }
}

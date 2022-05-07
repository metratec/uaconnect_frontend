import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:uafrontend/app/locator.dart';
import 'package:uafrontend/services/settings_service.dart';
import 'package:uafrontend/ui/widgets/navbar/navbar.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget? child;

  LayoutTemplate({
    Key? key,
    required this.child,
  }) : super(key: key);

  // final languages = const ["de", "ua"];
  NavigationService navigationService = locator<NavigationService>();
  SettingsService settingsService = locator<SettingsService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Navbar(),
          Expanded(
            child: Container(
              child: child,
            ),
          ),
        ],
      ),
      // drawer: Drawer(
      //   backgroundColor: Colors.grey,
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Column(
      //         children: [
      //           ToggleButtons(
      //             borderColor: Colors.grey[700],
      //             selectedBorderColor: Colors.grey[200],
      //             borderRadius: BorderRadius.circular(4),
      //             children: languages
      //                 .map(
      //                   (e) => Text(
      //                     e,
      //                     style: const TextStyle(color: Colors.white),
      //                   ),
      //                 )
      //                 .toList(),
      //             isSelected: languages
      //                 .map((e) => e == MainApp.getLocale(context).languageCode)
      //                 .toList(),
      //             onPressed: (index) {
      //               MainApp.setLocale(context, Locale(languages[index], ""));
      //             },
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

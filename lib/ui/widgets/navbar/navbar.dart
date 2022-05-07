import 'package:flutter/material.dart';
import 'package:uafrontend/app/ua_style.dart';
import 'package:uafrontend/ui/widgets/navbar/navbar_desktop.dart';
import 'package:uafrontend/ui/widgets/navbar/navbar_mobile.dart';

class Navbar extends StatelessWidget {
  double collapsableHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return MobileNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return MobileNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

double collapsableHeight = 0.0;
Color selected = UaColors.mainColor;
Color selected2 = UaColors.mainColor;
Color selected3 = UaColors.mainColor;
Color selected4 = UaColors.mainColor;
Color notSelected = Colors.black45;
Color notSelected2 = Colors.black45;
Color notSelected3 = Colors.black45;
Color notSelected4 = Colors.black45;
FontWeight selectedFW = FontWeight.w800;
FontWeight selectedFW2 = FontWeight.w800;
FontWeight selectedFW3 = FontWeight.w800;
FontWeight selectedFW4 = FontWeight.w800;
FontWeight notSelectedFW = FontWeight.w600;
FontWeight notSelectedFW2 = FontWeight.w600;
FontWeight notSelectedFW3 = FontWeight.w600;
FontWeight notSelectedFW4 = FontWeight.w600;

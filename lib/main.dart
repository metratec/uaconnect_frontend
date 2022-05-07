import 'package:google_fonts/google_fonts.dart';
import 'package:uafrontend/app/app.router.dart';
import 'package:uafrontend/app/locator.dart';
// import 'package:uafrontend/ui/setup_snackbar_ui.dart';
import 'package:uafrontend/localization/app_localizations_delegate.dart';
import 'package:uafrontend/localization/cupertino_localizations_delegate.dart';
import 'package:uafrontend/localization/material_localizations_delegate.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'ui/views/layout_template.dart';

void main() {
  // initLogging();
  setupLocator();
  // setupSnackbarUi();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  static void setLocale(BuildContext context, Locale newLocale) {
    var state = context.findAncestorStateOfType<_MainAppState>();
    state?.setLocale(newLocale);
  }

  static Locale getLocale(BuildContext context) {
    var state = context.findAncestorStateOfType<_MainAppState>();
    return state?.locale ?? const Locale("de", "");
  }

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Locale? locale;

  void setLocale(Locale locale) {
    setState(() {
      this.locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UAconnect',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.ibmPlexSansTextTheme(
          Theme.of(context).textTheme,
        ),
        colorSchemeSeed: Colors.orange,
        // platform: TargetPlatform.,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
      ),
      initialRoute: Routes.startView,
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      builder: (ctx, child) => LayoutTemplate(child: child),
      locale: locale,
      supportedLocales: const [
        Locale('de', ''),
        Locale('ua', ''),
      ],
      localizationsDelegates: const [
        AppLocalizationsDelegate(),
        MaterialLocalizationDelegate(),
        CupertinoLocalizationDelegate(),
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale?.languageCode &&
              supportedLocale.countryCode == locale?.countryCode) {
            return supportedLocale;
          }
        }
        return supportedLocales.first;
      },
    );
  }
}

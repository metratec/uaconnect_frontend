import 'package:flutter/material.dart';
import 'package:uafrontend/localization/language_ua.dart';
import 'package:uafrontend/localization/language_de.dart';
import 'package:uafrontend/localization/languages.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<Languages> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['de', 'ua'].contains(locale.languageCode);

  @override
  Future<Languages> load(Locale locale) => _load(locale);

  static Future<Languages> _load(Locale locale) async {
    switch (locale.languageCode) {
      case 'de':
        return LanguageDe();
      case 'ua':
        return LanguageUa();
      default:
        return LanguageDe();
    }
  }

  @override
  bool shouldReload(LocalizationsDelegate<Languages> old) => false;
}

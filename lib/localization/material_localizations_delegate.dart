import 'package:flutter/material.dart';

class MaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const MaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => ['de', 'ua'].contains(locale.languageCode);

  @override
  Future<MaterialLocalizations> load(Locale locale) => _load(locale);

  static Future<MaterialLocalizations> _load(Locale locale) async {
    switch (locale.languageCode) {
      case 'de':
        return const DefaultMaterialLocalizations(); // this could be overwritten in german
      default:
        return const DefaultMaterialLocalizations();
    }
  }

  @override
  bool shouldReload(LocalizationsDelegate<MaterialLocalizations> old) => false;
}

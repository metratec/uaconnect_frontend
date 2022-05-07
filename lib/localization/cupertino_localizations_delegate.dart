import 'package:flutter/cupertino.dart';

class CupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const CupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => ['de', 'ua'].contains(locale.languageCode);

  @override
  Future<CupertinoLocalizations> load(Locale locale) => _load(locale);

  static Future<CupertinoLocalizations> _load(Locale locale) async {
    switch (locale.languageCode) {
      case 'de':
        return const DefaultCupertinoLocalizations(); // this could be overwritten in german
      default:
        return const DefaultCupertinoLocalizations();
    }
  }

  @override
  bool shouldReload(LocalizationsDelegate<CupertinoLocalizations> old) => false;
}

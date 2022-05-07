import 'package:flutter/material.dart';
import 'package:uafrontend/localization/language_de.dart';

abstract class Languages {
  static Languages of(BuildContext context) {
    return Localizations.of<Languages>(context, Languages) ?? LanguageDe();
  }

  String get appName;
  // access using:
  // Languages
  //   .of(context)
  //   .appName

  // define any strings here first
  String get titleSignIn;
  String get titleSignInFailed;
  String get messageSignIn;
  String get scanBraceId;
  String get titlePicking;
  String get lowBattery;
  String get lowBatteryMessage;

  String get prepQuellregal;
  String get prepKartontyp;
  String get prepZielposition;
  String get prepTENummer;

  String get pickQuellplatz;
  String get pickArtikel;
  String get pickCharge;
  String get pickMenge;
}

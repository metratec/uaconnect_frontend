import 'package:uafrontend/localization/languages.dart';

class LanguageDe extends Languages {
  @override
  String get appName => "KoWa - Android";

  @override
  String get titleSignIn => "Anmelden";

  @override
  String get messageSignIn =>
      "Bitte halten Sie Ihren Ausweis an den Kartenleser";

  @override
  String get titleSignInFailed => "Anmeldung fehlgeschlagen";

  @override
  String get scanBraceId => "Bitte Scannen Sie Ihre BraceId";

  @override
  String get titlePicking => "ARTIKEL PICKEN";

  @override
  String get lowBattery => "Akku niedrig";

  @override
  String get lowBatteryMessage => "Bitte Akku tauschen oder aufladen";

  @override
  String get prepKartontyp => "Kartontyp";

  @override
  String get prepQuellregal => "Quellregal";

  @override
  String get prepTENummer => "TE Nummer";

  @override
  String get prepZielposition => "Zielposition";

  @override
  String get pickArtikel => "Artikel";

  @override
  String get pickCharge => "Charge";

  @override
  String get pickMenge => "Menge";

  @override
  String get pickQuellplatz => "Quellplatz";
}

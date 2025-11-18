// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get helloWorld => 'Hallo Welt!';

  @override
  String get appDetails => 'App-Details';

  @override
  String get description => 'Beschreibung';

  @override
  String get website => 'Webseite';

  @override
  String get platforms => 'Plattformen';

  @override
  String get supportedEventKinds => 'Unterstützte Ereignisarten';

  @override
  String get tags => 'Tags';

  @override
  String get publisher => 'Herausgeber';

  @override
  String get viewOnNostrhub => 'Auf nostrhub.io ansehen';

  @override
  String get viewOnNostrapp => 'Auf nostrapp.link ansehen';

  @override
  String get websiteCopied => 'Website-URL in Zwischenablage kopiert';

  @override
  String get appNotFound => 'App nicht gefunden';

  @override
  String get errorLoadingApp => 'Fehler beim Laden der App';
}

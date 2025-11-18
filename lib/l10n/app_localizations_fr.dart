// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get helloWorld => 'Bonjour le monde!';

  @override
  String get appDetails => 'Détails de l\'application';

  @override
  String get description => 'Description';

  @override
  String get website => 'Site web';

  @override
  String get platforms => 'Plateformes';

  @override
  String get supportedEventKinds => 'Types d\'événements pris en charge';

  @override
  String get tags => 'Tags';

  @override
  String get publisher => 'Éditeur';

  @override
  String get viewOnNostrhub => 'Voir sur nostrhub.io';

  @override
  String get viewOnNostrapp => 'Voir sur nostrapp.link';

  @override
  String get websiteCopied => 'URL du site web copiée dans le presse-papiers';

  @override
  String get appNotFound => 'Application introuvable';

  @override
  String get errorLoadingApp => 'Erreur lors du chargement de l\'application';
}

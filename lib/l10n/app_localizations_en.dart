// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World!';

  @override
  String get appDetails => 'App Details';

  @override
  String get description => 'Description';

  @override
  String get website => 'Website';

  @override
  String get platforms => 'Platforms';

  @override
  String get supportedEventKinds => 'Supported Event Kinds';

  @override
  String get tags => 'Tags';

  @override
  String get publisher => 'Publisher';

  @override
  String get viewOnNostrhub => 'View on nostrhub.io';

  @override
  String get viewOnNostrapp => 'View on nostrapp.link';

  @override
  String get websiteCopied => 'Website URL copied to clipboard';

  @override
  String get appNotFound => 'App not found';

  @override
  String get errorLoadingApp => 'Error loading app';
}

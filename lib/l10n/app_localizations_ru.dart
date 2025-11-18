// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get helloWorld => 'Привет, мир!';

  @override
  String get appDetails => 'Детали приложения';

  @override
  String get description => 'Описание';

  @override
  String get website => 'Веб-сайт';

  @override
  String get platforms => 'Платформы';

  @override
  String get supportedEventKinds => 'Поддерживаемые типы событий';

  @override
  String get tags => 'Теги';

  @override
  String get publisher => 'Издатель';

  @override
  String get viewOnNostrhub => 'Просмотреть на nostrhub.io';

  @override
  String get viewOnNostrapp => 'Просмотреть на nostrapp.link';

  @override
  String get websiteCopied => 'URL веб-сайта скопирован в буфер обмена';

  @override
  String get appNotFound => 'Приложение не найдено';

  @override
  String get errorLoadingApp => 'Ошибка загрузки приложения';
}

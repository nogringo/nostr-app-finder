// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get helloWorld => '¡Hola Mundo!';

  @override
  String get appDetails => 'Detalles de la aplicación';

  @override
  String get description => 'Descripción';

  @override
  String get website => 'Sitio web';

  @override
  String get platforms => 'Plataformas';

  @override
  String get supportedEventKinds => 'Tipos de eventos admitidos';

  @override
  String get tags => 'Etiquetas';

  @override
  String get publisher => 'Editor';

  @override
  String get viewOnNostrhub => 'Ver en nostrhub.io';

  @override
  String get viewOnNostrapp => 'Ver en nostrapp.link';

  @override
  String get websiteCopied => 'URL del sitio web copiada al portapapeles';

  @override
  String get appNotFound => 'Aplicación no encontrada';

  @override
  String get errorLoadingApp => 'Error al cargar la aplicación';
}

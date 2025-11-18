// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get helloWorld => 'こんにちは世界！';

  @override
  String get appDetails => 'アプリ詳細';

  @override
  String get description => '説明';

  @override
  String get website => 'ウェブサイト';

  @override
  String get platforms => 'プラットフォーム';

  @override
  String get supportedEventKinds => 'サポートされているイベント種別';

  @override
  String get tags => 'タグ';

  @override
  String get publisher => '発行者';

  @override
  String get viewOnNostrhub => 'nostrhub.ioで表示';

  @override
  String get viewOnNostrapp => 'nostrapp.linkで表示';

  @override
  String get websiteCopied => 'ウェブサイトのURLをクリップボードにコピーしました';

  @override
  String get appNotFound => 'アプリが見つかりません';

  @override
  String get errorLoadingApp => 'アプリの読み込みエラー';
}

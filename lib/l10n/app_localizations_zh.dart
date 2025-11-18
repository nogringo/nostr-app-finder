// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get helloWorld => '你好世界！';

  @override
  String get appDetails => '应用详情';

  @override
  String get description => '描述';

  @override
  String get website => '网站';

  @override
  String get platforms => '平台';

  @override
  String get supportedEventKinds => '支持的事件类型';

  @override
  String get tags => '标签';

  @override
  String get publisher => '发布者';

  @override
  String get viewOnNostrhub => '在 nostrhub.io 上查看';

  @override
  String get viewOnNostrapp => '在 nostrapp.link 上查看';

  @override
  String get websiteCopied => '网站URL已复制到剪贴板';

  @override
  String get appNotFound => '未找到应用';

  @override
  String get errorLoadingApp => '加载应用时出错';
}

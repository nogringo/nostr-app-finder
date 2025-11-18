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

  @override
  String unknownEventKind(int kind) {
    return 'Тип события $kind';
  }

  @override
  String get userMetadata => 'Метаданные пользователя';

  @override
  String get shortTextNote => 'Короткая текстовая заметка';

  @override
  String get recommendRelay => 'Рекомендовать реле';

  @override
  String get follows => 'Подписки';

  @override
  String get encryptedDirectMessages => 'Зашифрованные личные сообщения';

  @override
  String get eventDeletionRequest => 'Запрос на удаление события';

  @override
  String get repost => 'Репост';

  @override
  String get reaction => 'Реакция';

  @override
  String get badgeAward => 'Награждение значком';

  @override
  String get chatMessage => 'Сообщение в чате';

  @override
  String get groupChatThreadedReply => 'Ответ в ветке группового чата';

  @override
  String get thread => 'Ветка';

  @override
  String get groupThreadReply => 'Ответ в групповой ветке';

  @override
  String get seal => 'Печать';

  @override
  String get directMessage => 'Личное сообщение';

  @override
  String get fileMessage => 'Файловое сообщение';

  @override
  String get genericRepost => 'Общий репост';

  @override
  String get reactionToWebsite => 'Реакция на веб-сайт';

  @override
  String get picture => 'Изображение';

  @override
  String get videoEvent => 'Видео событие';

  @override
  String get shortFormPortraitVideoEvent =>
      'Короткое вертикальное видео событие';

  @override
  String get internalReference => 'Внутренняя ссылка';

  @override
  String get externalReference => 'Внешняя ссылка';

  @override
  String get hardcopyReference => 'Ссылка на бумажную копию';

  @override
  String get promptReference => 'Ссылка на запрос';

  @override
  String get channelCreation => 'Создание канала';

  @override
  String get channelMetadata => 'Метаданные канала';

  @override
  String get channelMessage => 'Сообщение канала';

  @override
  String get channelHideMessage => 'Скрыть сообщение канала';

  @override
  String get channelMuteUser => 'Заглушить пользователя канала';

  @override
  String get requestToVanish => 'Запрос на исчезновение';

  @override
  String get chessPgn => 'Шахматы (PGN)';

  @override
  String get mlsKeyPackage => 'Пакет ключей MLS';

  @override
  String get mlsWelcome => 'Приветствие MLS';

  @override
  String get mlsGroupEvent => 'Групповое событие MLS';

  @override
  String get mergeRequests => 'Запросы на слияние';

  @override
  String get pollResponse => 'Ответ на опрос';

  @override
  String get marketplaceBid => 'Ставка на маркетплейсе';

  @override
  String get marketplaceBidConfirmation =>
      'Подтверждение ставки на маркетплейсе';

  @override
  String get openTimestamps => 'OpenTimestamps';

  @override
  String get giftWrap => 'Подарочная упаковка';

  @override
  String get fileMetadata => 'Метаданные файла';

  @override
  String get poll => 'Опрос';

  @override
  String get comment => 'Комментарий';

  @override
  String get voiceMessage => 'Голосовое сообщение';

  @override
  String get voiceMessageComment => 'Комментарий к голосовому сообщению';

  @override
  String get liveChatMessage => 'Сообщение в прямом эфире';

  @override
  String get codeSnippet => 'Фрагмент кода';

  @override
  String get gitPatch => 'Git патч';

  @override
  String get gitPullRequest => 'Git запрос на извлечение';

  @override
  String get gitStatusUpdate => 'Обновление статуса Git';

  @override
  String get gitIssue => 'Git проблема';

  @override
  String get gitIssueUpdate => 'Обновление Git проблемы';

  @override
  String get status => 'Статус';

  @override
  String get statusUpdate => 'Обновление статуса';

  @override
  String get statusDelete => 'Удалить статус';

  @override
  String get statusReply => 'Ответ на статус';

  @override
  String get problemTracker => 'Трекер проблем';

  @override
  String get reporting => 'Жалоба';

  @override
  String get label => 'Метка';

  @override
  String get relayReviews => 'Обзоры реле';

  @override
  String get aiEmbeddings => 'AI встраивания / Векторные списки';

  @override
  String get torrent => 'Торрент';

  @override
  String get torrentComment => 'Комментарий к торренту';

  @override
  String get coinjoinPool => 'Пул Coinjoin';

  @override
  String get communityPostApproval => 'Одобрение публикации сообщества';

  @override
  String get jobRequest => 'Запрос на задание';

  @override
  String get jobResult => 'Результат задания';

  @override
  String get jobFeedback => 'Обратная связь по заданию';

  @override
  String get cashuWalletToken => 'Токен кошелька Cashu';

  @override
  String get cashuWalletProofs => 'Доказательства кошелька Cashu';

  @override
  String get cashuWalletHistory => 'История кошелька Cashu';

  @override
  String get geocacheCreate => 'Создать геокэш';

  @override
  String get geocacheUpdate => 'Обновить геокэш';

  @override
  String get groupControlEvent => 'Событие управления группой';

  @override
  String get zapGoal => 'Цель Zap';

  @override
  String get nutzap => 'Nutzap';

  @override
  String get tidalLogin => 'Вход Tidal';

  @override
  String get zapRequest => 'Запрос Zap';

  @override
  String get zap => 'Zap';

  @override
  String get highlights => 'Выделения';

  @override
  String get muteList => 'Список заглушенных';

  @override
  String get pinList => 'Список закрепленных';

  @override
  String get relayListMetadata => 'Метаданные списка реле';

  @override
  String get bookmarkList => 'Список закладок';

  @override
  String get communitiesList => 'Список сообществ';

  @override
  String get publicChatsList => 'Список публичных чатов';

  @override
  String get blockedRelaysList => 'Список заблокированных реле';

  @override
  String get searchRelaysList => 'Список реле для поиска';

  @override
  String get userGroups => 'Группы пользователей';

  @override
  String get favoritesList => 'Список избранного';

  @override
  String get privateEventsList => 'Список приватных событий';

  @override
  String get interestsList => 'Список интересов';

  @override
  String get mediaFollowsList => 'Список подписок на медиа';

  @override
  String get peopleFollowsList => 'Список подписок на людей';

  @override
  String get userEmojiList => 'Список эмодзи пользователя';

  @override
  String get dmRelayList => 'Список реле для ЛС';

  @override
  String get keyPackageRelayList => 'Список реле для пакетов ключей';

  @override
  String get userServerList => 'Список серверов пользователя';

  @override
  String get fileStorageServerList => 'Список серверов хранения файлов';

  @override
  String get relayMonitorAnnouncement => 'Объявление мониторинга реле';

  @override
  String get roomPresence => 'Присутствие в комнате';

  @override
  String get proxyAnnouncement => 'Объявление прокси';

  @override
  String get transportMethodAnnouncement => 'Объявление метода транспорта';

  @override
  String get walletInfo => 'Информация о кошельке';

  @override
  String get cashuWalletEvent => 'Событие кошелька Cashu';

  @override
  String get lightningPubRpc => 'Lightning Pub RPC';

  @override
  String get clientAuthentication => 'Аутентификация клиента';

  @override
  String get walletRequest => 'Запрос к кошельку';

  @override
  String get walletResponse => 'Ответ кошелька';

  @override
  String get nostrConnectEvent => 'Nostr Connect';

  @override
  String get blobsStoredOnMediaservers => 'Blobs, хранящиеся на медиасерверах';

  @override
  String get httpAuth => 'HTTP аутентификация';

  @override
  String get categorizedPeopleList => 'Категоризированный список людей';

  @override
  String get categorizedBookmarkList => 'Категоризированный список закладок';

  @override
  String get categorizedRelayList => 'Категоризированный список реле';

  @override
  String get bookmarkSets => 'Наборы закладок';

  @override
  String get curationSets => 'Наборы курирования';

  @override
  String get videoSets => 'Наборы видео';

  @override
  String get kindMuteSets => 'Наборы заглушенных типов';

  @override
  String get profileBadges => 'Значки профиля';

  @override
  String get badgeDefinition => 'Определение значка';

  @override
  String get interestSets => 'Наборы интересов';

  @override
  String get createOrUpdateStall => 'Создать или обновить киоск';

  @override
  String get createOrUpdateProduct => 'Создать или обновить продукт';

  @override
  String get marketplaceUiUx => 'UI/UX маркетплейса';

  @override
  String get productSoldAsAuction => 'Продукт, проданный на аукционе';

  @override
  String get longFormContent => 'Длинный контент';

  @override
  String get draftLongFormContent => 'Черновик длинного контента';

  @override
  String get emojiSets => 'Наборы эмодзи';

  @override
  String get curatedPublicationItem => 'Курированная публикация';

  @override
  String get curatedPublicationDraft => 'Черновик курированной публикации';

  @override
  String get releaseArtifactSets => 'Наборы артефактов релиза';

  @override
  String get applicationSpecificData => 'Данные, специфичные для приложения';

  @override
  String get relayDiscovery => 'Обнаружение реле';

  @override
  String get appCurationSets => 'Наборы курирования приложений';

  @override
  String get liveEvent => 'Живое событие';

  @override
  String get userStatus => 'Статус пользователя';

  @override
  String get slideSet => 'Набор слайдов';

  @override
  String get classifiedListing => 'Объявление';

  @override
  String get draftClassifiedListing => 'Черновик объявления';

  @override
  String get repositoryAnnouncement => 'Объявление репозитория';

  @override
  String get repositoryStateAnnouncement => 'Объявление состояния репозитория';

  @override
  String get wikiArticle => 'Статья Wiki';

  @override
  String get redirects => 'Перенаправления';

  @override
  String get draftEvent => 'Черновик события';

  @override
  String get linkSet => 'Набор ссылок';

  @override
  String get feed => 'Лента';

  @override
  String get dateBasedCalendarEvent => 'Событие календаря по дате';

  @override
  String get timeBasedCalendarEvent => 'Событие календаря по времени';

  @override
  String get calendar => 'Календарь';

  @override
  String get calendarEventRsvp => 'RSVP события календаря';

  @override
  String get handlerRecommendation => 'Рекомендация обработчика';

  @override
  String get handlerInformation => 'Информация об обработчике';

  @override
  String get softwareApplication => 'Программное приложение';

  @override
  String get videoView => 'Видеопросмотр';

  @override
  String get communityDefinition => 'Определение сообщества';

  @override
  String get geocacheListing => 'Список геокэшей';

  @override
  String get mintAnnouncement => 'Объявление Mint';

  @override
  String get mintQuote => 'Котировка Mint';

  @override
  String get peerToPeerOrder => 'Заказ P2P';

  @override
  String get groupMetadata => 'Метаданные группы';

  @override
  String get groupAdminMetadata => 'Метаданные администратора группы';

  @override
  String get groupMemberMetadata => 'Метаданные участника группы';

  @override
  String get groupAdminsList => 'Список администраторов группы';

  @override
  String get groupMembersList => 'Список участников группы';

  @override
  String get groupRoles => 'Роли группы';

  @override
  String get groupPermissions => 'Разрешения группы';

  @override
  String get groupChatMessage => 'Сообщение группового чата';

  @override
  String get groupChatThread => 'Ветка группового чата';

  @override
  String get groupPinned => 'Закрепленные группы';

  @override
  String get starterPacks => 'Стартовые паки';

  @override
  String get mediaStarterPacks => 'Медиа стартовые паки';

  @override
  String get webBookmarks => 'Веб-закладки';
}

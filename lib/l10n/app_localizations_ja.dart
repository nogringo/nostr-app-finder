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

  @override
  String unknownEventKind(int kind) {
    return 'イベント種類 $kind';
  }

  @override
  String get userMetadata => 'ユーザーメタデータ';

  @override
  String get shortTextNote => '短いテキストノート';

  @override
  String get recommendRelay => 'リレーを推薦';

  @override
  String get follows => 'フォロー';

  @override
  String get encryptedDirectMessages => '暗号化ダイレクトメッセージ';

  @override
  String get eventDeletionRequest => 'イベント削除リクエスト';

  @override
  String get repost => 'リポスト';

  @override
  String get reaction => 'リアクション';

  @override
  String get badgeAward => 'バッジ授与';

  @override
  String get chatMessage => 'チャットメッセージ';

  @override
  String get groupChatThreadedReply => 'グループチャットスレッド返信';

  @override
  String get thread => 'スレッド';

  @override
  String get groupThreadReply => 'グループスレッド返信';

  @override
  String get seal => 'シール';

  @override
  String get directMessage => 'ダイレクトメッセージ';

  @override
  String get fileMessage => 'ファイルメッセージ';

  @override
  String get genericRepost => '汎用リポスト';

  @override
  String get reactionToWebsite => 'ウェブサイトへのリアクション';

  @override
  String get picture => '画像';

  @override
  String get videoEvent => 'ビデオイベント';

  @override
  String get shortFormPortraitVideoEvent => '短編縦型ビデオイベント';

  @override
  String get internalReference => '内部参照';

  @override
  String get externalReference => '外部参照';

  @override
  String get hardcopyReference => 'ハードコピー参照';

  @override
  String get promptReference => 'プロンプト参照';

  @override
  String get channelCreation => 'チャンネル作成';

  @override
  String get channelMetadata => 'チャンネルメタデータ';

  @override
  String get channelMessage => 'チャンネルメッセージ';

  @override
  String get channelHideMessage => 'チャンネルメッセージ非表示';

  @override
  String get channelMuteUser => 'チャンネルユーザーミュート';

  @override
  String get requestToVanish => '消去リクエスト';

  @override
  String get chessPgn => 'チェス (PGN)';

  @override
  String get mlsKeyPackage => 'MLSキーパッケージ';

  @override
  String get mlsWelcome => 'MLSウェルカム';

  @override
  String get mlsGroupEvent => 'MLSグループイベント';

  @override
  String get mergeRequests => 'マージリクエスト';

  @override
  String get pollResponse => '投票回答';

  @override
  String get marketplaceBid => 'マーケットプレイス入札';

  @override
  String get marketplaceBidConfirmation => 'マーケットプレイス入札確認';

  @override
  String get openTimestamps => 'OpenTimestamps';

  @override
  String get giftWrap => 'ギフトラップ';

  @override
  String get fileMetadata => 'ファイルメタデータ';

  @override
  String get poll => '投票';

  @override
  String get comment => 'コメント';

  @override
  String get voiceMessage => '音声メッセージ';

  @override
  String get voiceMessageComment => '音声メッセージコメント';

  @override
  String get liveChatMessage => 'ライブチャットメッセージ';

  @override
  String get codeSnippet => 'コードスニペット';

  @override
  String get gitPatch => 'Gitパッチ';

  @override
  String get gitPullRequest => 'Gitプルリクエスト';

  @override
  String get gitStatusUpdate => 'Gitステータス更新';

  @override
  String get gitIssue => 'Git Issue';

  @override
  String get gitIssueUpdate => 'Git Issue更新';

  @override
  String get status => 'ステータス';

  @override
  String get statusUpdate => 'ステータス更新';

  @override
  String get statusDelete => 'ステータス削除';

  @override
  String get statusReply => 'ステータス返信';

  @override
  String get problemTracker => '問題トラッカー';

  @override
  String get reporting => '報告';

  @override
  String get label => 'ラベル';

  @override
  String get relayReviews => 'リレーレビュー';

  @override
  String get aiEmbeddings => 'AI埋め込み / ベクトルリスト';

  @override
  String get torrent => 'トレント';

  @override
  String get torrentComment => 'トレントコメント';

  @override
  String get coinjoinPool => 'Coinjoinプール';

  @override
  String get communityPostApproval => 'コミュニティ投稿承認';

  @override
  String get jobRequest => 'ジョブリクエスト';

  @override
  String get jobResult => 'ジョブ結果';

  @override
  String get jobFeedback => 'ジョブフィードバック';

  @override
  String get cashuWalletToken => 'Cashuウォレットトークン';

  @override
  String get cashuWalletProofs => 'Cashuウォレット証明';

  @override
  String get cashuWalletHistory => 'Cashuウォレット履歴';

  @override
  String get geocacheCreate => 'ジオキャッシュ作成';

  @override
  String get geocacheUpdate => 'ジオキャッシュ更新';

  @override
  String get groupControlEvent => 'グループ制御イベント';

  @override
  String get zapGoal => 'Zap目標';

  @override
  String get nutzap => 'Nutzap';

  @override
  String get tidalLogin => 'Tidalログイン';

  @override
  String get zapRequest => 'Zapリクエスト';

  @override
  String get zap => 'Zap';

  @override
  String get highlights => 'ハイライト';

  @override
  String get muteList => 'ミュートリスト';

  @override
  String get pinList => 'ピンリスト';

  @override
  String get relayListMetadata => 'リレーリストメタデータ';

  @override
  String get bookmarkList => 'ブックマークリスト';

  @override
  String get communitiesList => 'コミュニティリスト';

  @override
  String get publicChatsList => 'パブリックチャットリスト';

  @override
  String get blockedRelaysList => 'ブロックされたリレーリスト';

  @override
  String get searchRelaysList => '検索リレーリスト';

  @override
  String get userGroups => 'ユーザーグループ';

  @override
  String get favoritesList => 'お気に入りリスト';

  @override
  String get privateEventsList => 'プライベートイベントリスト';

  @override
  String get interestsList => '興味リスト';

  @override
  String get mediaFollowsList => 'メディアフォローリスト';

  @override
  String get peopleFollowsList => '人物フォローリスト';

  @override
  String get userEmojiList => 'ユーザー絵文字リスト';

  @override
  String get dmRelayList => 'DMリレーリスト';

  @override
  String get keyPackageRelayList => 'キーパッケージリレーリスト';

  @override
  String get userServerList => 'ユーザーサーバーリスト';

  @override
  String get fileStorageServerList => 'ファイルストレージサーバーリスト';

  @override
  String get relayMonitorAnnouncement => 'リレーモニター発表';

  @override
  String get roomPresence => 'ルームプレゼンス';

  @override
  String get proxyAnnouncement => 'プロキシ発表';

  @override
  String get transportMethodAnnouncement => 'トランスポート方法発表';

  @override
  String get walletInfo => 'ウォレット情報';

  @override
  String get cashuWalletEvent => 'Cashuウォレットイベント';

  @override
  String get lightningPubRpc => 'Lightning Pub RPC';

  @override
  String get clientAuthentication => 'クライアント認証';

  @override
  String get walletRequest => 'ウォレットリクエスト';

  @override
  String get walletResponse => 'ウォレットレスポンス';

  @override
  String get nostrConnectEvent => 'Nostr Connect';

  @override
  String get blobsStoredOnMediaservers => 'メディアサーバーに保存されたBlobs';

  @override
  String get httpAuth => 'HTTP認証';

  @override
  String get categorizedPeopleList => 'カテゴリ分けされた人物リスト';

  @override
  String get categorizedBookmarkList => 'カテゴリ分けされたブックマークリスト';

  @override
  String get categorizedRelayList => 'カテゴリ分けされたリレーリスト';

  @override
  String get bookmarkSets => 'ブックマークセット';

  @override
  String get curationSets => 'キュレーションセット';

  @override
  String get videoSets => 'ビデオセット';

  @override
  String get kindMuteSets => '種類別ミュートセット';

  @override
  String get profileBadges => 'プロフィールバッジ';

  @override
  String get badgeDefinition => 'バッジ定義';

  @override
  String get interestSets => '興味セット';

  @override
  String get createOrUpdateStall => 'ストールを作成または更新';

  @override
  String get createOrUpdateProduct => '製品を作成または更新';

  @override
  String get marketplaceUiUx => 'マーケットプレイスUI/UX';

  @override
  String get productSoldAsAuction => 'オークションとして販売される製品';

  @override
  String get longFormContent => '長文コンテンツ';

  @override
  String get draftLongFormContent => '長文コンテンツの下書き';

  @override
  String get emojiSets => '絵文字セット';

  @override
  String get curatedPublicationItem => 'キュレーションされた出版物アイテム';

  @override
  String get curatedPublicationDraft => 'キュレーションされた出版物の下書き';

  @override
  String get releaseArtifactSets => 'リリースアーティファクトセット';

  @override
  String get applicationSpecificData => 'アプリケーション固有データ';

  @override
  String get relayDiscovery => 'リレー発見';

  @override
  String get appCurationSets => 'アプリキュレーションセット';

  @override
  String get liveEvent => 'ライブイベント';

  @override
  String get userStatus => 'ユーザーステータス';

  @override
  String get slideSet => 'スライドセット';

  @override
  String get classifiedListing => '分類広告';

  @override
  String get draftClassifiedListing => '分類広告の下書き';

  @override
  String get repositoryAnnouncement => 'リポジトリ発表';

  @override
  String get repositoryStateAnnouncement => 'リポジトリ状態発表';

  @override
  String get wikiArticle => 'Wiki記事';

  @override
  String get redirects => 'リダイレクト';

  @override
  String get draftEvent => 'イベントの下書き';

  @override
  String get linkSet => 'リンクセット';

  @override
  String get feed => 'フィード';

  @override
  String get dateBasedCalendarEvent => '日付ベースのカレンダーイベント';

  @override
  String get timeBasedCalendarEvent => '時間ベースのカレンダーイベント';

  @override
  String get calendar => 'カレンダー';

  @override
  String get calendarEventRsvp => 'カレンダーイベントRSVP';

  @override
  String get handlerRecommendation => 'ハンドラー推奨';

  @override
  String get handlerInformation => 'ハンドラー情報';

  @override
  String get softwareApplication => 'ソフトウェアアプリケーション';

  @override
  String get videoView => 'ビデオビュー';

  @override
  String get communityDefinition => 'コミュニティ定義';

  @override
  String get geocacheListing => 'ジオキャッシュリスト';

  @override
  String get mintAnnouncement => 'Mint発表';

  @override
  String get mintQuote => 'Mint見積もり';

  @override
  String get peerToPeerOrder => 'ピアツーピア注文';

  @override
  String get groupMetadata => 'グループメタデータ';

  @override
  String get groupAdminMetadata => 'グループ管理者メタデータ';

  @override
  String get groupMemberMetadata => 'グループメンバーメタデータ';

  @override
  String get groupAdminsList => 'グループ管理者リスト';

  @override
  String get groupMembersList => 'グループメンバーリスト';

  @override
  String get groupRoles => 'グループロール';

  @override
  String get groupPermissions => 'グループ権限';

  @override
  String get groupChatMessage => 'グループチャットメッセージ';

  @override
  String get groupChatThread => 'グループチャットスレッド';

  @override
  String get groupPinned => 'グループピン留め';

  @override
  String get starterPacks => 'スターターパック';

  @override
  String get mediaStarterPacks => 'メディアスターターパック';

  @override
  String get webBookmarks => 'Webブックマーク';
}

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

  @override
  String unknownEventKind(int kind) {
    return '事件类型 $kind';
  }

  @override
  String get userMetadata => '用户元数据';

  @override
  String get shortTextNote => '短文本笔记';

  @override
  String get recommendRelay => '推荐中继';

  @override
  String get follows => '关注';

  @override
  String get encryptedDirectMessages => '加密私信';

  @override
  String get eventDeletionRequest => '事件删除请求';

  @override
  String get repost => '转发';

  @override
  String get reaction => '反应';

  @override
  String get badgeAward => '徽章授予';

  @override
  String get chatMessage => '聊天消息';

  @override
  String get groupChatThreadedReply => '群聊线程回复';

  @override
  String get thread => '线程';

  @override
  String get groupThreadReply => '群组线程回复';

  @override
  String get seal => '密封';

  @override
  String get directMessage => '私信';

  @override
  String get fileMessage => '文件消息';

  @override
  String get genericRepost => '通用转发';

  @override
  String get reactionToWebsite => '对网站的反应';

  @override
  String get picture => '图片';

  @override
  String get videoEvent => '视频事件';

  @override
  String get shortFormPortraitVideoEvent => '短视频竖屏事件';

  @override
  String get internalReference => '内部引用';

  @override
  String get externalReference => '外部引用';

  @override
  String get hardcopyReference => '纸质副本引用';

  @override
  String get promptReference => '提示引用';

  @override
  String get channelCreation => '频道创建';

  @override
  String get channelMetadata => '频道元数据';

  @override
  String get channelMessage => '频道消息';

  @override
  String get channelHideMessage => '隐藏频道消息';

  @override
  String get channelMuteUser => '静音频道用户';

  @override
  String get requestToVanish => '消失请求';

  @override
  String get chessPgn => '国际象棋 (PGN)';

  @override
  String get mlsKeyPackage => 'MLS 密钥包';

  @override
  String get mlsWelcome => 'MLS 欢迎';

  @override
  String get mlsGroupEvent => 'MLS 群组事件';

  @override
  String get mergeRequests => '合并请求';

  @override
  String get pollResponse => '投票回复';

  @override
  String get marketplaceBid => '市场出价';

  @override
  String get marketplaceBidConfirmation => '市场出价确认';

  @override
  String get openTimestamps => 'OpenTimestamps';

  @override
  String get giftWrap => '礼物包装';

  @override
  String get fileMetadata => '文件元数据';

  @override
  String get poll => '投票';

  @override
  String get comment => '评论';

  @override
  String get voiceMessage => '语音消息';

  @override
  String get voiceMessageComment => '语音消息评论';

  @override
  String get liveChatMessage => '直播聊天消息';

  @override
  String get codeSnippet => '代码片段';

  @override
  String get gitPatch => 'Git 补丁';

  @override
  String get gitPullRequest => 'Git 拉取请求';

  @override
  String get gitStatusUpdate => 'Git 状态更新';

  @override
  String get gitIssue => 'Git 问题';

  @override
  String get gitIssueUpdate => 'Git 问题更新';

  @override
  String get status => '状态';

  @override
  String get statusUpdate => '状态更新';

  @override
  String get statusDelete => '删除状态';

  @override
  String get statusReply => '状态回复';

  @override
  String get problemTracker => '问题跟踪器';

  @override
  String get reporting => '报告';

  @override
  String get label => '标签';

  @override
  String get relayReviews => '中继评论';

  @override
  String get aiEmbeddings => 'AI 嵌入 / 向量列表';

  @override
  String get torrent => '种子';

  @override
  String get torrentComment => '种子评论';

  @override
  String get coinjoinPool => 'Coinjoin 池';

  @override
  String get communityPostApproval => '社区帖子批准';

  @override
  String get jobRequest => '作业请求';

  @override
  String get jobResult => '作业结果';

  @override
  String get jobFeedback => '作业反馈';

  @override
  String get cashuWalletToken => 'Cashu 钱包代币';

  @override
  String get cashuWalletProofs => 'Cashu 钱包证明';

  @override
  String get cashuWalletHistory => 'Cashu 钱包历史';

  @override
  String get geocacheCreate => '创建地理缓存';

  @override
  String get geocacheUpdate => '更新地理缓存';

  @override
  String get groupControlEvent => '群组控制事件';

  @override
  String get zapGoal => 'Zap 目标';

  @override
  String get nutzap => 'Nutzap';

  @override
  String get tidalLogin => 'Tidal 登录';

  @override
  String get zapRequest => 'Zap 请求';

  @override
  String get zap => 'Zap';

  @override
  String get highlights => '高亮';

  @override
  String get muteList => '静音列表';

  @override
  String get pinList => '置顶列表';

  @override
  String get relayListMetadata => '中继列表元数据';

  @override
  String get bookmarkList => '书签列表';

  @override
  String get communitiesList => '社区列表';

  @override
  String get publicChatsList => '公共聊天列表';

  @override
  String get blockedRelaysList => '已屏蔽中继列表';

  @override
  String get searchRelaysList => '搜索中继列表';

  @override
  String get userGroups => '用户群组';

  @override
  String get favoritesList => '收藏列表';

  @override
  String get privateEventsList => '私密事件列表';

  @override
  String get interestsList => '兴趣列表';

  @override
  String get mediaFollowsList => '媒体关注列表';

  @override
  String get peopleFollowsList => '人物关注列表';

  @override
  String get userEmojiList => '用户表情列表';

  @override
  String get dmRelayList => '私信中继列表';

  @override
  String get keyPackageRelayList => '密钥包中继列表';

  @override
  String get userServerList => '用户服务器列表';

  @override
  String get fileStorageServerList => '文件存储服务器列表';

  @override
  String get relayMonitorAnnouncement => '中继监控公告';

  @override
  String get roomPresence => '房间在线状态';

  @override
  String get proxyAnnouncement => '代理公告';

  @override
  String get transportMethodAnnouncement => '传输方法公告';

  @override
  String get walletInfo => '钱包信息';

  @override
  String get cashuWalletEvent => 'Cashu 钱包事件';

  @override
  String get lightningPubRpc => 'Lightning Pub RPC';

  @override
  String get clientAuthentication => '客户端认证';

  @override
  String get walletRequest => '钱包请求';

  @override
  String get walletResponse => '钱包响应';

  @override
  String get nostrConnectEvent => 'Nostr Connect';

  @override
  String get blobsStoredOnMediaservers => '存储在媒体服务器上的 Blobs';

  @override
  String get httpAuth => 'HTTP 认证';

  @override
  String get categorizedPeopleList => '分类人物列表';

  @override
  String get categorizedBookmarkList => '分类书签列表';

  @override
  String get categorizedRelayList => '分类中继列表';

  @override
  String get bookmarkSets => '书签集';

  @override
  String get curationSets => '策展集';

  @override
  String get videoSets => '视频集';

  @override
  String get kindMuteSets => '类型静音集';

  @override
  String get profileBadges => '个人资料徽章';

  @override
  String get badgeDefinition => '徽章定义';

  @override
  String get interestSets => '兴趣集';

  @override
  String get createOrUpdateStall => '创建或更新摊位';

  @override
  String get createOrUpdateProduct => '创建或更新产品';

  @override
  String get marketplaceUiUx => '市场 UI/UX';

  @override
  String get productSoldAsAuction => '作为拍卖出售的产品';

  @override
  String get longFormContent => '长篇内容';

  @override
  String get draftLongFormContent => '长篇内容草稿';

  @override
  String get emojiSets => '表情集';

  @override
  String get curatedPublicationItem => '策展出版物项';

  @override
  String get curatedPublicationDraft => '策展出版物草稿';

  @override
  String get releaseArtifactSets => '发布工件集';

  @override
  String get applicationSpecificData => '应用特定数据';

  @override
  String get relayDiscovery => '中继发现';

  @override
  String get appCurationSets => '应用策展集';

  @override
  String get liveEvent => '直播事件';

  @override
  String get userStatus => '用户状态';

  @override
  String get slideSet => '幻灯片集';

  @override
  String get classifiedListing => '分类广告';

  @override
  String get draftClassifiedListing => '分类广告草稿';

  @override
  String get repositoryAnnouncement => '仓库公告';

  @override
  String get repositoryStateAnnouncement => '仓库状态公告';

  @override
  String get wikiArticle => 'Wiki 文章';

  @override
  String get redirects => '重定向';

  @override
  String get draftEvent => '事件草稿';

  @override
  String get linkSet => '链接集';

  @override
  String get feed => '动态';

  @override
  String get dateBasedCalendarEvent => '基于日期的日历事件';

  @override
  String get timeBasedCalendarEvent => '基于时间的日历事件';

  @override
  String get calendar => '日历';

  @override
  String get calendarEventRsvp => '日历事件回复';

  @override
  String get handlerRecommendation => '处理器推荐';

  @override
  String get handlerInformation => '处理器信息';

  @override
  String get softwareApplication => '软件应用';

  @override
  String get videoView => '视频视图';

  @override
  String get communityDefinition => '社区定义';

  @override
  String get geocacheListing => '地理缓存列表';

  @override
  String get mintAnnouncement => '铸币公告';

  @override
  String get mintQuote => '铸币报价';

  @override
  String get peerToPeerOrder => '点对点订单';

  @override
  String get groupMetadata => '群组元数据';

  @override
  String get groupAdminMetadata => '群组管理员元数据';

  @override
  String get groupMemberMetadata => '群组成员元数据';

  @override
  String get groupAdminsList => '群组管理员列表';

  @override
  String get groupMembersList => '群组成员列表';

  @override
  String get groupRoles => '群组角色';

  @override
  String get groupPermissions => '群组权限';

  @override
  String get groupChatMessage => '群组聊天消息';

  @override
  String get groupChatThread => '群组聊天线程';

  @override
  String get groupPinned => '群组置顶';

  @override
  String get starterPacks => '入门包';

  @override
  String get mediaStarterPacks => '媒体入门包';

  @override
  String get webBookmarks => '网页书签';
}

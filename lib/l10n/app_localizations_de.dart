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

  @override
  String unknownEventKind(int kind) {
    return 'Ereignistyp $kind';
  }

  @override
  String get userMetadata => 'Benutzermetadaten';

  @override
  String get shortTextNote => 'Kurze Textnotiz';

  @override
  String get recommendRelay => 'Relay empfehlen';

  @override
  String get follows => 'Folgt';

  @override
  String get encryptedDirectMessages => 'Verschlüsselte Direktnachrichten';

  @override
  String get eventDeletionRequest => 'Ereignislöschungsanfrage';

  @override
  String get repost => 'Repost';

  @override
  String get reaction => 'Reaktion';

  @override
  String get badgeAward => 'Abzeichenverleihung';

  @override
  String get chatMessage => 'Chat-Nachricht';

  @override
  String get groupChatThreadedReply => 'Gruppenchat-Thread-Antwort';

  @override
  String get thread => 'Thread';

  @override
  String get groupThreadReply => 'Gruppen-Thread-Antwort';

  @override
  String get seal => 'Siegel';

  @override
  String get directMessage => 'Direktnachricht';

  @override
  String get fileMessage => 'Dateinachricht';

  @override
  String get genericRepost => 'Generischer Repost';

  @override
  String get reactionToWebsite => 'Reaktion auf Website';

  @override
  String get picture => 'Bild';

  @override
  String get videoEvent => 'Video-Ereignis';

  @override
  String get shortFormPortraitVideoEvent => 'Kurzes Hochformat-Video-Ereignis';

  @override
  String get internalReference => 'Interne Referenz';

  @override
  String get externalReference => 'Externe Referenz';

  @override
  String get hardcopyReference => 'Hardcopy-Referenz';

  @override
  String get promptReference => 'Prompt-Referenz';

  @override
  String get channelCreation => 'Kanalerstellung';

  @override
  String get channelMetadata => 'Kanalmetadaten';

  @override
  String get channelMessage => 'Kanalnachricht';

  @override
  String get channelHideMessage => 'Kanalnachricht ausblenden';

  @override
  String get channelMuteUser => 'Kanalbenutzer stummschalten';

  @override
  String get requestToVanish => 'Anfrage zum Verschwinden';

  @override
  String get chessPgn => 'Schach (PGN)';

  @override
  String get mlsKeyPackage => 'MLS-Schlüsselpaket';

  @override
  String get mlsWelcome => 'MLS-Willkommen';

  @override
  String get mlsGroupEvent => 'MLS-Gruppenereignis';

  @override
  String get mergeRequests => 'Merge-Anfragen';

  @override
  String get pollResponse => 'Umfrageantwort';

  @override
  String get marketplaceBid => 'Marktplatz-Gebot';

  @override
  String get marketplaceBidConfirmation => 'Marktplatz-Gebotsbestätigung';

  @override
  String get openTimestamps => 'OpenTimestamps';

  @override
  String get giftWrap => 'Geschenkverpackung';

  @override
  String get fileMetadata => 'Dateimetadaten';

  @override
  String get poll => 'Umfrage';

  @override
  String get comment => 'Kommentar';

  @override
  String get voiceMessage => 'Sprachnachricht';

  @override
  String get voiceMessageComment => 'Sprachnachrichtenkommentar';

  @override
  String get liveChatMessage => 'Live-Chat-Nachricht';

  @override
  String get codeSnippet => 'Code-Snippet';

  @override
  String get gitPatch => 'Git-Patch';

  @override
  String get gitPullRequest => 'Git-Pull-Request';

  @override
  String get gitStatusUpdate => 'Git-Status-Update';

  @override
  String get gitIssue => 'Git-Issue';

  @override
  String get gitIssueUpdate => 'Git-Issue-Update';

  @override
  String get status => 'Status';

  @override
  String get statusUpdate => 'Status-Update';

  @override
  String get statusDelete => 'Status löschen';

  @override
  String get statusReply => 'Status-Antwort';

  @override
  String get problemTracker => 'Problem-Tracker';

  @override
  String get reporting => 'Meldung';

  @override
  String get label => 'Label';

  @override
  String get relayReviews => 'Relay-Bewertungen';

  @override
  String get aiEmbeddings => 'KI-Einbettungen / Vektorlisten';

  @override
  String get torrent => 'Torrent';

  @override
  String get torrentComment => 'Torrent-Kommentar';

  @override
  String get coinjoinPool => 'Coinjoin-Pool';

  @override
  String get communityPostApproval => 'Community-Beitragsgenehmigung';

  @override
  String get jobRequest => 'Auftragsanfrage';

  @override
  String get jobResult => 'Auftragsergebnis';

  @override
  String get jobFeedback => 'Auftrags-Feedback';

  @override
  String get cashuWalletToken => 'Cashu-Wallet-Token';

  @override
  String get cashuWalletProofs => 'Cashu-Wallet-Nachweise';

  @override
  String get cashuWalletHistory => 'Cashu-Wallet-Verlauf';

  @override
  String get geocacheCreate => 'Geocache erstellen';

  @override
  String get geocacheUpdate => 'Geocache aktualisieren';

  @override
  String get groupControlEvent => 'Gruppensteuerungs-Ereignis';

  @override
  String get zapGoal => 'Zap-Ziel';

  @override
  String get nutzap => 'Nutzap';

  @override
  String get tidalLogin => 'Tidal-Anmeldung';

  @override
  String get zapRequest => 'Zap-Anfrage';

  @override
  String get zap => 'Zap';

  @override
  String get highlights => 'Highlights';

  @override
  String get muteList => 'Stummschaltungsliste';

  @override
  String get pinList => 'Pin-Liste';

  @override
  String get relayListMetadata => 'Relay-Listenmetadaten';

  @override
  String get bookmarkList => 'Lesezeichenliste';

  @override
  String get communitiesList => 'Community-Liste';

  @override
  String get publicChatsList => 'Öffentliche Chat-Liste';

  @override
  String get blockedRelaysList => 'Blockierte Relay-Liste';

  @override
  String get searchRelaysList => 'Such-Relay-Liste';

  @override
  String get userGroups => 'Benutzergruppen';

  @override
  String get favoritesList => 'Favoritenliste';

  @override
  String get privateEventsList => 'Private Ereignisliste';

  @override
  String get interestsList => 'Interessenliste';

  @override
  String get mediaFollowsList => 'Medien-Folge-Liste';

  @override
  String get peopleFollowsList => 'Personen-Folge-Liste';

  @override
  String get userEmojiList => 'Benutzer-Emoji-Liste';

  @override
  String get dmRelayList => 'DM-Relay-Liste';

  @override
  String get keyPackageRelayList => 'Schlüsselpaket-Relay-Liste';

  @override
  String get userServerList => 'Benutzerserverliste';

  @override
  String get fileStorageServerList => 'Dateispeicherserverliste';

  @override
  String get relayMonitorAnnouncement => 'Relay-Monitor-Ankündigung';

  @override
  String get roomPresence => 'Raumpräsenz';

  @override
  String get proxyAnnouncement => 'Proxy-Ankündigung';

  @override
  String get transportMethodAnnouncement => 'Transportmethoden-Ankündigung';

  @override
  String get walletInfo => 'Wallet-Informationen';

  @override
  String get cashuWalletEvent => 'Cashu-Wallet-Ereignis';

  @override
  String get lightningPubRpc => 'Lightning Pub RPC';

  @override
  String get clientAuthentication => 'Client-Authentifizierung';

  @override
  String get walletRequest => 'Wallet-Anfrage';

  @override
  String get walletResponse => 'Wallet-Antwort';

  @override
  String get nostrConnectEvent => 'Nostr Connect';

  @override
  String get blobsStoredOnMediaservers =>
      'Auf Medienservern gespeicherte Blobs';

  @override
  String get httpAuth => 'HTTP-Authentifizierung';

  @override
  String get categorizedPeopleList => 'Kategorisierte Personenliste';

  @override
  String get categorizedBookmarkList => 'Kategorisierte Lesezeichenliste';

  @override
  String get categorizedRelayList => 'Kategorisierte Relay-Liste';

  @override
  String get bookmarkSets => 'Lesezeichensets';

  @override
  String get curationSets => 'Kuratierungssets';

  @override
  String get videoSets => 'Videosets';

  @override
  String get kindMuteSets => 'Art-Stummschaltungssets';

  @override
  String get profileBadges => 'Profilabzeichen';

  @override
  String get badgeDefinition => 'Abzeichendefinition';

  @override
  String get interestSets => 'Interessensets';

  @override
  String get createOrUpdateStall => 'Stand erstellen oder aktualisieren';

  @override
  String get createOrUpdateProduct => 'Produkt erstellen oder aktualisieren';

  @override
  String get marketplaceUiUx => 'Marktplatz-UI/UX';

  @override
  String get productSoldAsAuction => 'Produkt als Auktion verkauft';

  @override
  String get longFormContent => 'Langform-Inhalt';

  @override
  String get draftLongFormContent => 'Entwurf für Langform-Inhalt';

  @override
  String get emojiSets => 'Emoji-Sets';

  @override
  String get curatedPublicationItem => 'Kuratierter Publikationsartikel';

  @override
  String get curatedPublicationDraft => 'Entwurf für kuratierte Publikation';

  @override
  String get releaseArtifactSets => 'Release-Artefaktsets';

  @override
  String get applicationSpecificData => 'Anwendungsspezifische Daten';

  @override
  String get relayDiscovery => 'Relay-Erkennung';

  @override
  String get appCurationSets => 'App-Kuratierungssets';

  @override
  String get liveEvent => 'Live-Ereignis';

  @override
  String get userStatus => 'Benutzerstatus';

  @override
  String get slideSet => 'Folienset';

  @override
  String get classifiedListing => 'Kleinanzeige';

  @override
  String get draftClassifiedListing => 'Entwurf für Kleinanzeige';

  @override
  String get repositoryAnnouncement => 'Repository-Ankündigung';

  @override
  String get repositoryStateAnnouncement => 'Repository-Status-Ankündigung';

  @override
  String get wikiArticle => 'Wiki-Artikel';

  @override
  String get redirects => 'Weiterleitungen';

  @override
  String get draftEvent => 'Entwurfs-Ereignis';

  @override
  String get linkSet => 'Linkset';

  @override
  String get feed => 'Feed';

  @override
  String get dateBasedCalendarEvent => 'Datumsbasiertes Kalenderereignis';

  @override
  String get timeBasedCalendarEvent => 'Zeitbasiertes Kalenderereignis';

  @override
  String get calendar => 'Kalender';

  @override
  String get calendarEventRsvp => 'Kalender-Ereignis-RSVP';

  @override
  String get handlerRecommendation => 'Handler-Empfehlung';

  @override
  String get handlerInformation => 'Handler-Informationen';

  @override
  String get softwareApplication => 'Softwareanwendung';

  @override
  String get videoView => 'Videoansicht';

  @override
  String get communityDefinition => 'Community-Definition';

  @override
  String get geocacheListing => 'Geocache-Auflistung';

  @override
  String get mintAnnouncement => 'Mint-Ankündigung';

  @override
  String get mintQuote => 'Mint-Zitat';

  @override
  String get peerToPeerOrder => 'Peer-to-Peer-Bestellung';

  @override
  String get groupMetadata => 'Gruppenmetadaten';

  @override
  String get groupAdminMetadata => 'Gruppenadministrator-Metadaten';

  @override
  String get groupMemberMetadata => 'Gruppenmitglied-Metadaten';

  @override
  String get groupAdminsList => 'Gruppenadministratorenliste';

  @override
  String get groupMembersList => 'Gruppenmitgliederliste';

  @override
  String get groupRoles => 'Gruppenrollen';

  @override
  String get groupPermissions => 'Gruppenberechtigungen';

  @override
  String get groupChatMessage => 'Gruppenchat-Nachricht';

  @override
  String get groupChatThread => 'Gruppenchat-Thread';

  @override
  String get groupPinned => 'Gruppengepinnt';

  @override
  String get starterPacks => 'Starter-Packs';

  @override
  String get mediaStarterPacks => 'Medien-Starter-Packs';

  @override
  String get webBookmarks => 'Web-Lesezeichen';
}

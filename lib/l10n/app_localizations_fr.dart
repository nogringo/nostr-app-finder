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

  @override
  String unknownEventKind(int kind) {
    return 'Type d\'Événement $kind';
  }

  @override
  String get userMetadata => 'Métadonnées Utilisateur';

  @override
  String get shortTextNote => 'Note de Texte Courte';

  @override
  String get recommendRelay => 'Recommander un Relais';

  @override
  String get follows => 'Abonnements';

  @override
  String get encryptedDirectMessages => 'Messages Directs Chiffrés';

  @override
  String get eventDeletionRequest => 'Demande de Suppression d\'Événement';

  @override
  String get repost => 'Repost';

  @override
  String get reaction => 'Réaction';

  @override
  String get badgeAward => 'Attribution de Badge';

  @override
  String get chatMessage => 'Message de Chat';

  @override
  String get groupChatThreadedReply =>
      'Réponse de Discussion de Chat de Groupe';

  @override
  String get thread => 'Fil de Discussion';

  @override
  String get groupThreadReply => 'Réponse au Fil de Groupe';

  @override
  String get seal => 'Sceau';

  @override
  String get directMessage => 'Message Direct';

  @override
  String get fileMessage => 'Message de Fichier';

  @override
  String get genericRepost => 'Repost Générique';

  @override
  String get reactionToWebsite => 'Réaction à un site web';

  @override
  String get picture => 'Image';

  @override
  String get videoEvent => 'Événement Vidéo';

  @override
  String get shortFormPortraitVideoEvent => 'Événement Vidéo Portrait Courte';

  @override
  String get internalReference => 'Référence interne';

  @override
  String get externalReference => 'Référence externe';

  @override
  String get hardcopyReference => 'Référence de copie papier';

  @override
  String get promptReference => 'Référence de prompt';

  @override
  String get channelCreation => 'Création de Canal';

  @override
  String get channelMetadata => 'Métadonnées de Canal';

  @override
  String get channelMessage => 'Message de Canal';

  @override
  String get channelHideMessage => 'Masquer Message de Canal';

  @override
  String get channelMuteUser => 'Mettre en Sourdine Utilisateur du Canal';

  @override
  String get requestToVanish => 'Demande de Disparition';

  @override
  String get chessPgn => 'Échecs (PGN)';

  @override
  String get mlsKeyPackage => 'Package de Clés MLS';

  @override
  String get mlsWelcome => 'Bienvenue MLS';

  @override
  String get mlsGroupEvent => 'Événement de Groupe MLS';

  @override
  String get mergeRequests => 'Demandes de Fusion';

  @override
  String get pollResponse => 'Réponse au Sondage';

  @override
  String get marketplaceBid => 'Offre de Marché';

  @override
  String get marketplaceBidConfirmation => 'Confirmation d\'Offre de Marché';

  @override
  String get openTimestamps => 'OpenTimestamps';

  @override
  String get giftWrap => 'Emballage Cadeau';

  @override
  String get fileMetadata => 'Métadonnées de Fichier';

  @override
  String get poll => 'Sondage';

  @override
  String get comment => 'Commentaire';

  @override
  String get voiceMessage => 'Message Vocal';

  @override
  String get voiceMessageComment => 'Commentaire de Message Vocal';

  @override
  String get liveChatMessage => 'Message de Chat en Direct';

  @override
  String get codeSnippet => 'Fragment de Code';

  @override
  String get gitPatch => 'Patch Git';

  @override
  String get gitPullRequest => 'Pull Request Git';

  @override
  String get gitStatusUpdate => 'Mise à jour du Statut Git';

  @override
  String get gitIssue => 'Problème Git';

  @override
  String get gitIssueUpdate => 'Mise à jour de Problème Git';

  @override
  String get status => 'Statut';

  @override
  String get statusUpdate => 'Mise à jour du Statut';

  @override
  String get statusDelete => 'Supprimer le Statut';

  @override
  String get statusReply => 'Réponse au Statut';

  @override
  String get problemTracker => 'Suivi de Problèmes';

  @override
  String get reporting => 'Signalement';

  @override
  String get label => 'Étiquette';

  @override
  String get relayReviews => 'Avis sur les relais';

  @override
  String get aiEmbeddings => 'Embeddings IA / Listes de vecteurs';

  @override
  String get torrent => 'Torrent';

  @override
  String get torrentComment => 'Commentaire de Torrent';

  @override
  String get coinjoinPool => 'Pool Coinjoin';

  @override
  String get communityPostApproval =>
      'Approbation de Publication de Communauté';

  @override
  String get jobRequest => 'Demande de Travail';

  @override
  String get jobResult => 'Résultat de Travail';

  @override
  String get jobFeedback => 'Retour de Travail';

  @override
  String get cashuWalletToken => 'Token de Portefeuille Cashu';

  @override
  String get cashuWalletProofs => 'Preuves de Portefeuille Cashu';

  @override
  String get cashuWalletHistory => 'Historique de Portefeuille Cashu';

  @override
  String get geocacheCreate => 'Créer Géocache';

  @override
  String get geocacheUpdate => 'Mettre à jour Géocache';

  @override
  String get groupControlEvent => 'Événement de Contrôle de Groupe';

  @override
  String get zapGoal => 'Objectif de Zap';

  @override
  String get nutzap => 'Nutzap';

  @override
  String get tidalLogin => 'Connexion Tidal';

  @override
  String get zapRequest => 'Demande de Zap';

  @override
  String get zap => 'Zap';

  @override
  String get highlights => 'Surlignages';

  @override
  String get muteList => 'Liste de Sourdine';

  @override
  String get pinList => 'Liste d\'Épingles';

  @override
  String get relayListMetadata => 'Métadonnées de Liste de Relais';

  @override
  String get bookmarkList => 'Liste de Favoris';

  @override
  String get communitiesList => 'Liste de Communautés';

  @override
  String get publicChatsList => 'Liste de Chats Publics';

  @override
  String get blockedRelaysList => 'Liste de Relais Bloqués';

  @override
  String get searchRelaysList => 'Liste de Relais de Recherche';

  @override
  String get userGroups => 'Groupes d\'Utilisateur';

  @override
  String get favoritesList => 'Liste de Favoris';

  @override
  String get privateEventsList => 'Liste d\'Événements Privés';

  @override
  String get interestsList => 'Liste d\'Intérêts';

  @override
  String get mediaFollowsList => 'Liste d\'Abonnements Médias';

  @override
  String get peopleFollowsList => 'Liste d\'Abonnements Personnes';

  @override
  String get userEmojiList => 'Liste d\'Emojis Utilisateur';

  @override
  String get dmRelayList => 'Liste de Relais MD';

  @override
  String get keyPackageRelayList => 'Liste de Relais de Package de Clés';

  @override
  String get userServerList => 'Liste de Serveurs Utilisateur';

  @override
  String get fileStorageServerList =>
      'Liste de Serveurs de Stockage de Fichiers';

  @override
  String get relayMonitorAnnouncement => 'Annonce de Moniteur de Relais';

  @override
  String get roomPresence => 'Présence dans la Salle';

  @override
  String get proxyAnnouncement => 'Annonce de Proxy';

  @override
  String get transportMethodAnnouncement => 'Annonce de Méthode de Transport';

  @override
  String get walletInfo => 'Informations de Portefeuille';

  @override
  String get cashuWalletEvent => 'Événement de Portefeuille Cashu';

  @override
  String get lightningPubRpc => 'Lightning Pub RPC';

  @override
  String get clientAuthentication => 'Authentification Client';

  @override
  String get walletRequest => 'Demande de Portefeuille';

  @override
  String get walletResponse => 'Réponse de Portefeuille';

  @override
  String get nostrConnectEvent => 'Nostr Connect';

  @override
  String get blobsStoredOnMediaservers => 'Blobs stockés sur serveurs médias';

  @override
  String get httpAuth => 'Authentification HTTP';

  @override
  String get categorizedPeopleList => 'Liste de Personnes Catégorisées';

  @override
  String get categorizedBookmarkList => 'Liste de Favoris Catégorisés';

  @override
  String get categorizedRelayList => 'Liste de Relais Catégorisés';

  @override
  String get bookmarkSets => 'Ensembles de Favoris';

  @override
  String get curationSets => 'Ensembles de Curation';

  @override
  String get videoSets => 'Ensembles de Vidéos';

  @override
  String get kindMuteSets => 'Ensembles de Sourdine par Type';

  @override
  String get profileBadges => 'Badges de Profil';

  @override
  String get badgeDefinition => 'Définition de Badge';

  @override
  String get interestSets => 'Ensembles d\'Intérêts';

  @override
  String get createOrUpdateStall => 'Créer ou Mettre à jour Stand';

  @override
  String get createOrUpdateProduct => 'Créer ou Mettre à jour Produit';

  @override
  String get marketplaceUiUx => 'UI/UX de Marché';

  @override
  String get productSoldAsAuction => 'Produit Vendu aux Enchères';

  @override
  String get longFormContent => 'Contenu de Forme Longue';

  @override
  String get draftLongFormContent => 'Brouillon de Contenu de Forme Longue';

  @override
  String get emojiSets => 'Ensembles d\'Emojis';

  @override
  String get curatedPublicationItem => 'Article de Publication Curé';

  @override
  String get curatedPublicationDraft => 'Brouillon de Publication Curée';

  @override
  String get releaseArtifactSets => 'Ensembles d\'Artefacts de Version';

  @override
  String get applicationSpecificData => 'Données Spécifiques à l\'Application';

  @override
  String get relayDiscovery => 'Découverte de Relais';

  @override
  String get appCurationSets => 'Ensembles de Curation d\'Applications';

  @override
  String get liveEvent => 'Événement en Direct';

  @override
  String get userStatus => 'Statut Utilisateur';

  @override
  String get slideSet => 'Ensemble de Diapositives';

  @override
  String get classifiedListing => 'Annonce Classée';

  @override
  String get draftClassifiedListing => 'Brouillon d\'Annonce Classée';

  @override
  String get repositoryAnnouncement => 'Annonce de Dépôt';

  @override
  String get repositoryStateAnnouncement => 'Annonce d\'État de Dépôt';

  @override
  String get wikiArticle => 'Article Wiki';

  @override
  String get redirects => 'Redirections';

  @override
  String get draftEvent => 'Brouillon d\'Événement';

  @override
  String get linkSet => 'Ensemble de Liens';

  @override
  String get feed => 'Flux';

  @override
  String get dateBasedCalendarEvent =>
      'Événement de Calendrier Basé sur la Date';

  @override
  String get timeBasedCalendarEvent =>
      'Événement de Calendrier Basé sur l\'Heure';

  @override
  String get calendar => 'Calendrier';

  @override
  String get calendarEventRsvp => 'RSVP d\'Événement de Calendrier';

  @override
  String get handlerRecommendation => 'Recommandation de Gestionnaire';

  @override
  String get handlerInformation => 'Informations de Gestionnaire';

  @override
  String get softwareApplication => 'Application Logicielle';

  @override
  String get videoView => 'Vue vidéo';

  @override
  String get communityDefinition => 'Définition de Communauté';

  @override
  String get geocacheListing => 'Liste de Géocache';

  @override
  String get mintAnnouncement => 'Annonce de Mint';

  @override
  String get mintQuote => 'Citation de Mint';

  @override
  String get peerToPeerOrder => 'Commande de Pair à Pair';

  @override
  String get groupMetadata => 'Métadonnées de Groupe';

  @override
  String get groupAdminMetadata => 'Métadonnées d\'Administrateur de Groupe';

  @override
  String get groupMemberMetadata => 'Métadonnées de Membre de Groupe';

  @override
  String get groupAdminsList => 'Liste d\'Administrateurs de Groupe';

  @override
  String get groupMembersList => 'Liste de Membres de Groupe';

  @override
  String get groupRoles => 'Rôles de Groupe';

  @override
  String get groupPermissions => 'Permissions de Groupe';

  @override
  String get groupChatMessage => 'Message de Chat de Groupe';

  @override
  String get groupChatThread => 'Fil de Chat de Groupe';

  @override
  String get groupPinned => 'Épinglés de Groupe';

  @override
  String get starterPacks => 'Packs de Démarrage';

  @override
  String get mediaStarterPacks => 'Packs de Démarrage Médias';

  @override
  String get webBookmarks => 'Favoris Web';
}

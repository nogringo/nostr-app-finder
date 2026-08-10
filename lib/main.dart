import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk_flutter/ndk_flutter.dart';
import 'package:ndk_flutter/l10n/app_localizations.dart' as ndk_flutter;
import 'package:nostr_app_finder/app_routes.dart';
import 'package:nostr_app_finder/l10n/app_localizations.dart';
import 'package:nostr_app_finder/screens/app/app_screen.dart';
import 'package:nostr_app_finder/utils/get_database.dart';
import 'package:nostr_app_finder/repository.dart';
import 'package:nostr_app_finder/screens/browse/browse_screen.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';
import 'package:toastification/toastification.dart';

// TODO when kind, platform, publisher or tag tapped then do a search
// TODO on the app page, show the related apps (similar)
// TODO create related keyword for better search
// TODO search tags and kinds
// TODO update after fetch apps

void main() async {
  final db = await getDatabase();
  final cache = SembastCacheManager(db);

  final ndk = Ndk(NdkConfig(eventVerifier: NdkEventVerifier(), cache: cache));
  Get.put(ndk);
  Get.put(NdkFlutter(ndk: ndk));

  final appFinder = AppFinder(db: db, ndk: ndk);
  await appFinder.loadApps();
  Get.put(appFinder);

  Get.put(Repository());

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    Repository.to.initApp();
    return ToastificationWrapper(
      child: GetMaterialApp(
        title: 'Nostr App Finder',
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        localizationsDelegates: [
          AppLocalizations.delegate,
          ndk_flutter.AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        initialRoute: AppRoutes.home,
        getPages: [
          GetPage(name: AppRoutes.home, page: () => const BrowseScreen()),
          GetPage(name: AppRoutes.app, page: () => const AppScreen()),
        ],
      ),
    );
  }
}

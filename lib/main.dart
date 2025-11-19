import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk_rust_verifier/ndk_rust_verifier.dart';
import 'package:nostr_app_finder/app_routes.dart';
import 'package:nostr_app_finder/l10n/app_localizations.dart';
import 'package:nostr_app_finder/screens/app/app_screen.dart';
import 'package:nostr_app_finder/utils/get_database.dart';
import 'package:nostr_app_finder/repository.dart';
import 'package:nostr_app_finder/screens/browse/browse_screen.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';
import 'package:sembast_cache_manager/sembast_cache_manager.dart';
import 'package:toastification/toastification.dart';
import 'package:nostr_widgets/l10n/app_localizations.dart' as nostr_widgets;

// TODO when kind, platform, publisher or tag tapped then do a search
// TODO on the app page, show the related apps (similar)
// TODO create related keyword for better search
// TODO search tags and kinds
// TODO update after fetch apps

class NoEventVerifier extends EventVerifier {
  @override
  Future<bool> verify(Nip01Event event) async {
    return true;
  }
}

void main() async {
  final rustEventVerifier = RustEventVerifier();
  Get.put(rustEventVerifier);

  final db = await getDatabase();
  final cache = SembastCacheManager(db);

  final ndk = Ndk(
    NdkConfig(
      eventVerifier: kDebugMode && kIsWeb
          ? NoEventVerifier()
          : rustEventVerifier,
      cache: cache,
    ),
  );
  Get.put(ndk);

  final appFinder = AppFinder(ndk: ndk);
  await appFinder.loadApps();
  Get.put(appFinder);

  Get.put(Repository());

  appFinder.fetchNewApps();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: GetMaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        localizationsDelegates: [
          AppLocalizations.delegate,
          nostr_widgets.AppLocalizations.delegate,
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

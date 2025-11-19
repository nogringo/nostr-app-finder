import 'package:get/get.dart';
import 'package:ndk/ndk.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';

class Repository extends GetxController {
  static Repository get to => Get.find();
  static Ndk get ndk => Get.find();
  static AppFinder get appFinder => Get.find();

  Future<void> initApp() async {
    await appFinder.fetchNewApps();
    update();
  }
}

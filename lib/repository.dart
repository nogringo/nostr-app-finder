import 'package:get/get.dart';
import 'package:ndk/ndk.dart';
import 'package:ndk_flutter/ndk_flutter.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';

class Repository extends GetxController {
  static Repository get to => Get.find();
  static Ndk get ndk => Get.find();
  static NdkFlutter get ndkFlutter => Get.find();
  static AppFinder get appFinder => Get.find();

  Future<void> initApp() async {
    await appFinder.fetchNewApps();
    update();
  }
}

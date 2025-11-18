import 'package:get/get.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';

class Repository extends GetxController {
  static Repository get to => Get.find();
  static AppFinder get appFinder => Get.find();
}

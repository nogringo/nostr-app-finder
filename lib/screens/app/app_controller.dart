import 'package:get/get.dart';
import 'package:nostr_app_finder/repository.dart';
import 'package:nostr_app_finder/utils/nip19/nip19.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';

class AppController extends GetxController {
  static AppController get to => Get.find();

  final Rx<NostrApp?> app = Rx<NostrApp?>(null);
  final RxBool isLoading = true.obs;
  final RxString errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadApp();
  }

  void loadApp() {
    try {
      isLoading.value = true;
      errorMessage.value = '';

      final id = Get.parameters['id'];
      if (id == null) {
        errorMessage.value = 'No app ID provided';
        isLoading.value = false;
        return;
      }

      // Decode naddr to get pubkey, kind, and identifier
      final naddr = Nip19.decodeNaddr(id);

      // Find the app in the loaded apps
      final foundApp = Repository.appFinder.apps.firstWhereOrNull(
        (a) => a.event.pubKey == naddr.pubkey && a.identifier == naddr.identifier,
      );

      if (foundApp == null) {
        errorMessage.value = 'App not found';
      } else {
        app.value = foundApp;
      }
    } catch (e) {
      errorMessage.value = 'Error loading app: $e';
    } finally {
      isLoading.value = false;
    }
  }
}

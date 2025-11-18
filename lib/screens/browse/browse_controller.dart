import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nostr_app_finder/repository.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';

class BrowseController {
  static BrowseController get to => Get.find();

  final searchController = TextEditingController();

  RxList<ScoredApp> apps = RxList<ScoredApp>();

  void searchChanged() async {
    final value = searchController.text.trim();

    String search = value;
    List<String> tags = [];
    List<int> kinds = [];
    List<String> platforms = [];

    final fields = value.split(" ").where((e) => e.contains(":"));
    for (var field in fields) {
      search = search.replaceAll(field, "");

      final splited = field.split(":");

      final fieldName = splited[0];
      final fieldValue = splited[1];

      if (fieldValue == "") continue;

      if (fieldName == "tag") {
        tags.add(fieldValue);
      }
      if (fieldName == "kind") {
        final kind = int.tryParse(fieldValue);
        if (kind == null) continue;
        kinds.add(int.parse(fieldValue));
      }
      if (fieldName == "platform") {
        platforms.add(fieldValue);
      }
    }

    search = search.trim();

    final apps = Repository.appFinder.search(
      search: value,
      tags: tags.isEmpty ? null : tags,
      kinds: kinds.isEmpty ? null : kinds,
      platforms: platforms.isEmpty ? null : platforms,
    );
    this.apps.clear();
    this.apps.addAll(apps);
  }
}

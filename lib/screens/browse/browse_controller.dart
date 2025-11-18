import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nostr_app_finder/repository.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';

class BrowseController {
  static BrowseController get to => Get.find();

  final searchController = TextEditingController();

  RxList<ScoredApp> apps = RxList<ScoredApp>();

  // Filter selections
  RxList<String> selectedPlatforms = RxList<String>();
  RxList<String> selectedTags = RxList<String>();
  RxList<int> selectedKinds = RxList<int>();

  void togglePlatform(String platform) {
    if (selectedPlatforms.contains(platform)) {
      selectedPlatforms.remove(platform);
    } else {
      selectedPlatforms.add(platform);
    }
    searchChanged();
  }

  void toggleTag(String tag) {
    if (selectedTags.contains(tag)) {
      selectedTags.remove(tag);
    } else {
      selectedTags.add(tag);
    }
    searchChanged();
  }

  void toggleKind(int kind) {
    if (selectedKinds.contains(kind)) {
      selectedKinds.remove(kind);
    } else {
      selectedKinds.add(kind);
    }
    searchChanged();
  }

  void clearFilters() {
    selectedPlatforms.clear();
    selectedTags.clear();
    selectedKinds.clear();
    searchChanged();
  }

  void searchChanged() async {
    final value = searchController.text.trim();

    String search = value;
    List<String> tags = [...selectedTags];
    List<int> kinds = [...selectedKinds];
    List<String> platforms = [...selectedPlatforms];

    final fields = value.split(" ").where((e) => e.contains(":"));
    for (var field in fields) {
      search = search.replaceAll(field, "");

      final splited = field.split(":");

      final fieldName = splited[0];
      final fieldValue = splited[1];

      if (fieldValue == "") continue;

      if (fieldName == "tag") {
        if (!tags.contains(fieldValue)) {
          tags.add(fieldValue);
        }
      }
      if (fieldName == "kind") {
        final kind = int.tryParse(fieldValue);
        if (kind == null) continue;
        if (!kinds.contains(kind)) {
          kinds.add(kind);
        }
      }
      if (fieldName == "platform") {
        if (!platforms.contains(fieldValue)) {
          platforms.add(fieldValue);
        }
      }
    }

    search = search.trim();

    final apps = Repository.appFinder.search(
      search: search.isEmpty ? null : search,
      tags: tags.isEmpty ? null : tags,
      kinds: kinds.isEmpty ? null : kinds,
      platforms: platforms.isEmpty ? null : platforms,
    );
    this.apps.clear();
    this.apps.addAll(apps);
  }
}

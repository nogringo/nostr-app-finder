import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nostr_app_finder/repository.dart';
import 'package:nostr_app_finder/screens/browse/browse_controller.dart';
import 'package:nostr_app_finder/screens/browse/widgets/scored_app_tile_view.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BrowseController());
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
          ),
          // onChanged: BrowseController.to.searchChanged,
          onSubmitted: BrowseController.to.searchChanged,
        ),
      ),
      body: Obx(() {
        return ListView(
          children: [
            Text("${Repository.appFinder.apps.length} apps found"),
            ...BrowseController.to.apps.map(
              (app) => ScoredAppTileView(app: app),
            ),
          ],
        );
      }),
    );
  }
}

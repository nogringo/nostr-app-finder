import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nostr_app_finder/screens/browse/browse_controller.dart';
import 'package:nostr_app_finder/screens/browse/widgets/filters_view.dart';
import 'package:nostr_app_finder/screens/browse/widgets/scored_app_tile_view.dart';
import 'package:nostr_app_finder/screens/browse/widgets/search_bar_view.dart';

// TOTO search tag and kinds

class LargeLayout extends StatelessWidget {
  const LargeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Filters sidebar (full height)
              Container(
                width: 300,
                height: Get.height,
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Theme.of(
                        context,
                      ).dividerColor.withValues(alpha: 0.2),
                      width: 1.5,
                    ),
                  ),
                ),
                child: SingleChildScrollView(child: FiltersView()),
              ),
              // Apps list with search bar
              Expanded(
                child: Column(
                  children: [
                    // Search bar
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: SearchBarView(),
                    ),
                    // Apps list
                    Expanded(
                      child: Obx(() {
                        return ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                '${BrowseController.to.apps.length} apps found',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ),
                            ...BrowseController.to.apps.map(
                              (app) => ScoredAppTileView(
                                app: app,
                                horizontalPadding: 16,
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

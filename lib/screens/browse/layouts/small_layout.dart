import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nostr_app_finder/screens/browse/browse_controller.dart';
import 'package:nostr_app_finder/screens/browse/widgets/filters_view.dart';
import 'package:nostr_app_finder/screens/browse/widgets/scored_app_tile_view.dart';
import 'package:nostr_app_finder/screens/browse/widgets/search_bar_view.dart';

class SmallLayout extends StatelessWidget {
  const SmallLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Browse Apps')),
      body: Column(
        children: [
          // Search bar
          SearchBarView(),
          // Filter toggle button
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Obx(() {
                    final filterCount =
                        BrowseController.to.selectedPlatforms.length +
                        BrowseController.to.selectedTags.length +
                        BrowseController.to.selectedKinds.length;

                    return OutlinedButton.icon(
                      onPressed: () {
                        _showFiltersBottomSheet(context);
                      },
                      icon: Icon(Icons.filter_list),
                      label: Text(
                        filterCount > 0 ? 'Filters ($filterCount)' : 'Filters',
                      ),
                    );
                  }),
                ),
              ],
            ),
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
                    (app) => ScoredAppTileView(app: app, horizontalPadding: 16),
                  ),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }

  void _showFiltersBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => DraggableScrollableSheet(
        initialChildSize: 0.7,
        minChildSize: 0.5,
        maxChildSize: 0.95,
        expand: false,
        builder: (context, scrollController) => Container(
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Filters',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.close),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: FiltersView(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

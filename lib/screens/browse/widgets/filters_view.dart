import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nostr_app_finder/repository.dart';
import 'package:nostr_app_finder/screens/browse/browse_controller.dart';

class FiltersView extends StatelessWidget {
  const FiltersView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = BrowseController.to;
    final appFinder = Repository.appFinder;

    // Reactive variables for show more/less
    final showAllTags = false.obs;
    final showAllKinds = false.obs;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Active Filters Section
          Obx(() {
            final hasFilters =
                controller.selectedPlatforms.isNotEmpty ||
                controller.selectedTags.isNotEmpty ||
                controller.selectedKinds.isNotEmpty;

            if (!hasFilters) return const SizedBox.shrink();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Theme.of(
                        context,
                      ).colorScheme.primary.withValues(alpha: 0.3),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Active Filters',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextButton.icon(
                            onPressed: controller.clearFilters,
                            icon: Icon(Icons.clear_all, size: 16),
                            label: Text('Clear All'),
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 6,
                        runSpacing: 6,
                        children: [
                          // Platforms
                          ...controller.selectedPlatforms.map(
                            (platform) => Chip(
                              label: Text(
                                platform,
                                style: TextStyle(fontSize: 12),
                              ),
                              deleteIcon: Icon(Icons.close, size: 14),
                              onDeleted: () =>
                                  controller.togglePlatform(platform),
                              visualDensity: VisualDensity.compact,
                            ),
                          ),
                          // Tags
                          ...controller.selectedTags.map(
                            (tag) => Chip(
                              label: Text(tag, style: TextStyle(fontSize: 12)),
                              deleteIcon: Icon(Icons.close, size: 14),
                              onDeleted: () => controller.toggleTag(tag),
                              visualDensity: VisualDensity.compact,
                            ),
                          ),
                          // Kinds
                          ...controller.selectedKinds.map(
                            (kind) => Chip(
                              label: Text(
                                'Kind $kind',
                                style: TextStyle(fontSize: 12),
                              ),
                              deleteIcon: Icon(Icons.close, size: 14),
                              onDeleted: () => controller.toggleKind(kind),
                              visualDensity: VisualDensity.compact,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
              ],
            );
          }),

          // Platforms Filter Section (from AppFinder)
          _buildSectionTitle('Platforms'),
          const SizedBox(height: 8),
          Builder(
            builder: (context) {
              // Get all platforms ordered by usage from AppFinder
              final platforms = appFinder.platforms;

              return Wrap(
                spacing: 8,
                runSpacing: 8,
                children: platforms.map((scoredPlatform) {
                  final platformName = scoredPlatform.platform;
                  // Capitalize first letter for display
                  final displayName =
                      platformName[0].toUpperCase() + platformName.substring(1);

                  return _buildFilterChip(
                    label: '$displayName (${scoredPlatform.score})',
                    isSelected: controller.selectedPlatforms.contains(
                      platformName,
                    ),
                    onSelected: (selected) =>
                        controller.togglePlatform(platformName),
                  );
                }).toList(),
              );
            },
          ),

          const SizedBox(height: 24),

          // Tags Filter Section (from AppFinder)
          _buildSectionTitle('Tags'),
          const SizedBox(height: 8),
          Obx(() {
            final allTags = appFinder.tags;
            final tagsToShow = showAllTags.value
                ? allTags
                : allTags.take(20).toList();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: tagsToShow.map((scoredTag) {
                    return _buildFilterChip(
                      label: '${scoredTag.tag} (${scoredTag.score})',
                      isSelected: controller.selectedTags.contains(
                        scoredTag.tag,
                      ),
                      onSelected: (selected) =>
                          controller.toggleTag(scoredTag.tag),
                    );
                  }).toList(),
                ),
                if (allTags.length > 20) ...[
                  const SizedBox(height: 8),
                  TextButton.icon(
                    onPressed: () => showAllTags.value = !showAllTags.value,
                    icon: Icon(
                      showAllTags.value ? Icons.expand_less : Icons.expand_more,
                    ),
                    label: Text(
                      showAllTags.value
                          ? 'Show Less'
                          : 'Show More (${allTags.length - 20} more)',
                    ),
                  ),
                ],
              ],
            );
          }),

          const SizedBox(height: 24),

          // Event Kinds Filter Section (from AppFinder)
          _buildSectionTitle('Event Kinds'),
          const SizedBox(height: 8),
          Obx(() {
            final allKinds = appFinder.kinds;
            final kindsToShow = showAllKinds.value
                ? allKinds
                : allKinds.take(15).toList();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: kindsToShow.map((scoredKind) {
                    return _buildFilterChip(
                      label: 'Kind ${scoredKind.kind} (${scoredKind.score})',
                      isSelected: controller.selectedKinds.contains(
                        scoredKind.kind,
                      ),
                      onSelected: (selected) =>
                          controller.toggleKind(scoredKind.kind),
                    );
                  }).toList(),
                ),
                if (allKinds.length > 15) ...[
                  const SizedBox(height: 8),
                  TextButton.icon(
                    onPressed: () => showAllKinds.value = !showAllKinds.value,
                    icon: Icon(
                      showAllKinds.value
                          ? Icons.expand_less
                          : Icons.expand_more,
                    ),
                    label: Text(
                      showAllKinds.value
                          ? 'Show Less'
                          : 'Show More (${allKinds.length - 15} more)',
                    ),
                  ),
                ],
              ],
            );
          }),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildFilterChip({
    required String label,
    required bool isSelected,
    required Function(bool) onSelected,
  }) {
    return Builder(
      builder: (context) => FilterChip(
        label: Text(label),
        selected: isSelected,
        onSelected: onSelected,
        selectedColor: Theme.of(context).colorScheme.primaryContainer,
        checkmarkColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}

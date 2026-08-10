import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nostr_app_finder/app_routes.dart';
import 'package:nostr_app_finder/utils/app_naddr.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';

class ScoredAppTileView extends StatelessWidget {
  final ScoredApp app;
  final double horizontalPadding;

  const ScoredAppTileView({
    super.key,
    required this.app,
    required this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      leading: Builder(
        builder: (context) {
          final theme = Theme.of(context);
          final defaultChild = Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                "${app.app.name} "[0].toUpperCase(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          );

          if (app.app.picture == null) {
            return defaultChild;
          }

          return Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              app.app.picture!,
              width: 40,
              height: 40,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return defaultChild;
              },
            ),
          );
        },
      ),
      title: Text(app.app.name),
      trailing: Chip(
        label: Text("${(app.score * 100).floor()} %"),
        shape: StadiumBorder(),
        padding: EdgeInsets.zero,
      ),
      subtitle: app.app.description == null ? null : Text(app.app.description!),
      onTap: () async {
        final naddr = await appNaddr(app.app.event);
        if (naddr == null) return;
        Get.toNamed(AppRoutes.getAppRoute(naddr));
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nostr_app_finder/app_routes.dart';
import 'package:nostr_app_finder/utils/nip19/nip19.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';

class ScoredAppTileView extends StatelessWidget {
  final ScoredApp app;

  const ScoredAppTileView({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Builder(
        builder: (context) {
          final defaultChild = CircleAvatar(
            child: Text("${app.app.name} "[0].toUpperCase()),
          );

          return app.app.picture == null
              ? defaultChild
              : Image.network(
                  app.app.picture!,
                  errorBuilder: (context, error, stackTrace) {
                    return defaultChild;
                  },
                );
        },
      ),
      title: Row(
        children: [
          Expanded(child: Text(app.app.name)),
          Chip(
            label: Text("${(app.score * 100).floor()} %"),
            shape: StadiumBorder(),
            padding: EdgeInsets.zero,
          ),
        ],
      ),
      subtitle: app.app.description == null ? null : Text(app.app.description!),
      onTap: () {
        final dTag = app.app.event.getDtag();
        if (dTag == null) return;
        final naddr = Nip19.encodeNaddr(
          identifier: dTag,
          pubkey: app.app.event.pubKey,
          kind: app.app.event.kind,
          relays: app.app.event.sources,
        );
        Get.toNamed(AppRoutes.getAppRoute(naddr));
      },
    );
  }
}

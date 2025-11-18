import 'package:flutter/material.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';

class AppTileView extends StatelessWidget {
  final NostrApp app;

  const AppTileView({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Builder(
        builder: (context) {
          final defaultChild = CircleAvatar(
            child: Text("${app.name} "[0].toUpperCase()),
          );

          return app.picture == null
              ? defaultChild
              : Image.network(
                  app.picture!,
                  errorBuilder: (context, error, stackTrace) {
                    return defaultChild;
                  },
                );
        },
      ),
      title: Text(app.name),
      subtitle: app.description == null ? null : Text(app.description!),
    );
  }
}

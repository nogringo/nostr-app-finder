import 'package:flutter/material.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';

class AppHeader extends StatelessWidget {
  final NostrApp app;

  const AppHeader({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth < 600;

        if (isMobile) {
          return Column(
            children: [
              _buildAppIcon(context, app, size: 120),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    app.name,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  if (app.identifier != null) ...[
                    SizedBox(height: 4),
                    Text(
                      app.identifier!,
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ],
              ),
            ],
          );
        }

        return Row(
          children: [
            _buildAppIcon(context, app, size: 80),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    app.name,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  if (app.identifier != null) ...[
                    SizedBox(height: 4),
                    Text(
                      app.identifier!,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildAppIcon(BuildContext context, NostrApp app, {double size = 80}) {
    if (app.picture != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          app.picture!,
          width: size,
          height: size,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return _buildDefaultIcon(context, app.name, size: size);
          },
        ),
      );
    }
    return _buildDefaultIcon(context, app.name, size: size);
  }

  Widget _buildDefaultIcon(
    BuildContext context,
    String name, {
    double size = 80,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          name.isNotEmpty ? name[0].toUpperCase() : '?',
          style: TextStyle(
            fontSize: size * 0.4,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
      ),
    );
  }
}

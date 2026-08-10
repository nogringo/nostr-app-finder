import 'package:flutter/material.dart';
import 'package:nostr_app_finder/l10n/app_localizations.dart';
import 'package:nostr_app_finder/utils/app_naddr.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';
import 'package:url_launcher/url_launcher.dart';

class ActionButtons extends StatelessWidget {
  final NostrApp app;

  const ActionButtons({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    if (app.event.getDtag() == null) return SizedBox.shrink();

    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmall = constraints.maxWidth < 600;

        final l10n = AppLocalizations.of(context)!;

        if (isSmall) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OutlinedButton.icon(
                onPressed: () => _openApp('https://nostrhub.io/'),
                icon: Icon(Icons.open_in_new),
                label: Text(l10n.viewOnNostrhub),
                style: OutlinedButton.styleFrom(shape: StadiumBorder()),
              ),
              SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () => _openApp('https://nostrapp.link/a/'),
                icon: Icon(Icons.open_in_new),
                label: Text(l10n.viewOnNostrapp),
                style: OutlinedButton.styleFrom(shape: StadiumBorder()),
              ),
            ],
          );
        }

        return Row(
          children: [
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _openApp('https://nostrhub.io/'),
                icon: Icon(Icons.open_in_new),
                label: Text(l10n.viewOnNostrhub),
                style: OutlinedButton.styleFrom(shape: StadiumBorder()),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _openApp('https://nostrapp.link/a/'),
                icon: Icon(Icons.open_in_new),
                label: Text(l10n.viewOnNostrapp),
                style: OutlinedButton.styleFrom(shape: StadiumBorder()),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _openApp(String baseUrl) async {
    final naddr = await appNaddr(app.event);
    if (naddr == null) return;

    final url = Uri.parse('$baseUrl$naddr');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }
}

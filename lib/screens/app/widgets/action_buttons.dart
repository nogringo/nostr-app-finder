import 'package:flutter/material.dart';
import 'package:nostr_app_finder/l10n/app_localizations.dart';
import 'package:nostr_app_finder/utils/nip19/nip19.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';
import 'package:url_launcher/url_launcher.dart';

class ActionButtons extends StatelessWidget {
  final NostrApp app;

  const ActionButtons({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    final dTag = app.event.getDtag();
    if (dTag == null) return SizedBox.shrink();

    final naddr = Nip19.encodeNaddr(
      identifier: dTag,
      pubkey: app.event.pubKey,
      kind: app.event.kind,
      relays: app.event.sources,
    );

    final nostrhubUrl = 'https://nostrhub.io/$naddr';
    final nostrappUrl = 'https://nostrapp.link/a/$naddr';

    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmall = constraints.maxWidth < 600;

        final l10n = AppLocalizations.of(context)!;

        if (isSmall) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              OutlinedButton.icon(
                onPressed: () => _launchUrl(nostrhubUrl),
                icon: Icon(Icons.open_in_new),
                label: Text(l10n.viewOnNostrhub),
                style: OutlinedButton.styleFrom(shape: StadiumBorder()),
              ),
              SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () => _launchUrl(nostrappUrl),
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
                onPressed: () => _launchUrl(nostrhubUrl),
                icon: Icon(Icons.open_in_new),
                label: Text(l10n.viewOnNostrhub),
                style: OutlinedButton.styleFrom(shape: StadiumBorder()),
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: OutlinedButton.icon(
                onPressed: () => _launchUrl(nostrappUrl),
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

  Future<void> _launchUrl(String urlString) async {
    final url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }
}

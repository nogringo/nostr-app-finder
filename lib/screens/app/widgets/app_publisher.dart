import 'package:flutter/material.dart';
import 'package:nostr_app_finder/l10n/app_localizations.dart';
import 'package:nostr_app_finder/repository.dart';
import 'package:nostr_app_finder/utils/nip19/nip19.dart';
import 'package:nostr_app_finder/screens/app/widgets/section_title.dart';
import 'package:nostr_widgets/nostr_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class AppPublisher extends StatelessWidget {
  final String pubkey;

  const AppPublisher({super.key, required this.pubkey});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final ndk = Repository.ndk;
    final npub = Nip19.encodePubKey(pubkey);
    final shortNpub =
        '${npub.substring(0, 12)}...${npub.substring(npub.length - 8)}';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: l10n.publisher),
        SizedBox(height: 12),
        InkWell(
          onTap: () => _openProfile(pubkey),
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                NPicture(
                  ndk: ndk,
                  pubkey: pubkey,
                  useCircleAvatar: true,
                  circleAvatarRadius: 25,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NName(
                        ndk: ndk,
                        pubkey: pubkey,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 4),
                      Text(
                        shortNpub,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withValues(alpha: 0.6),
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.open_in_new,
                  size: 16,
                  color: Theme.of(
                    context,
                  ).colorScheme.onSurface.withValues(alpha: 0.6),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _openProfile(String pubkey) async {
    final url = Uri.parse('https://nosta.me/$pubkey');
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:nostr_app_finder/l10n/app_localizations.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';
import 'package:nostr_app_finder/screens/app/widgets/section_title.dart';
import 'package:nostr_app_finder/utils/nostr_kinds.dart';

class AppKinds extends StatelessWidget {
  final NostrApp app;

  const AppKinds({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    if (app.kinds.isEmpty) {
      return SizedBox.shrink();
    }

    final l10n = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: l10n.supportedEventKinds),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: app.kinds.map((kind) {
            final kindLabel = NostrKinds.getDescription(context, kind);
            return Chip(label: Text(kindLabel), shape: StadiumBorder());
          }).toList(),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}

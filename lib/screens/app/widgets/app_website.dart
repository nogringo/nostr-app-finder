import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nostr_app_finder/l10n/app_localizations.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';
import 'package:nostr_app_finder/screens/app/widgets/section_title.dart';
import 'package:toastification/toastification.dart';

class AppWebsite extends StatelessWidget {
  final NostrApp app;

  const AppWebsite({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    if (app.web == null) {
      return SizedBox.shrink();
    }

    final l10n = AppLocalizations.of(context)!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: l10n.website),
        SizedBox(height: 8),
        InkWell(
          onTap: () {
            Clipboard.setData(ClipboardData(text: app.web!));
            toastification.show(
              context: context,
              type: ToastificationType.success,
              style: ToastificationStyle.minimal,
              title: Text(l10n.websiteCopied),
              alignment: Alignment.bottomRight,
              autoCloseDuration: const Duration(seconds: 3),
            );
          },
          child: Row(
            children: [
              Icon(Icons.language, size: 20),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  app.web!,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Icon(Icons.copy, size: 16),
            ],
          ),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}

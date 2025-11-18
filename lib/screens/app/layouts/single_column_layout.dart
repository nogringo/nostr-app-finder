import 'package:flutter/material.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';
import 'package:nostr_app_finder/screens/app/widgets/app_header.dart';
import 'package:nostr_app_finder/screens/app/widgets/app_description.dart';
import 'package:nostr_app_finder/screens/app/widgets/app_website.dart';
import 'package:nostr_app_finder/screens/app/widgets/app_platforms.dart';
import 'package:nostr_app_finder/screens/app/widgets/app_kinds.dart';
import 'package:nostr_app_finder/screens/app/widgets/app_tags.dart';
import 'package:nostr_app_finder/screens/app/widgets/app_publisher.dart';
import 'package:nostr_app_finder/screens/app/widgets/action_buttons.dart';

class SingleColumnLayout extends StatelessWidget {
  final NostrApp app;

  const SingleColumnLayout({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppHeader(app: app),
        SizedBox(height: 16),
        ActionButtons(app: app),
        SizedBox(height: 24),
        AppDescription(app: app),
        AppWebsite(app: app),
        AppPlatforms(app: app),
        AppKinds(app: app),
        AppTags(app: app),
        AppPublisher(pubkey: app.event.pubKey),
      ],
    );
  }
}

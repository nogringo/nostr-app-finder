import 'package:flutter/material.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';
import 'package:nostr_app_finder/screens/app/widgets/section_title.dart';

class AppTags extends StatelessWidget {
  final NostrApp app;

  const AppTags({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    if (app.tags.isEmpty) {
      return SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: 'Tags'),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: app.tags.map((tag) {
            return Chip(label: Text(tag), shape: StadiumBorder());
          }).toList(),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}

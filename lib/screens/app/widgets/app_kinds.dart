import 'package:flutter/material.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';
import 'package:nostr_app_finder/screens/app/widgets/section_title.dart';

class AppKinds extends StatelessWidget {
  final NostrApp app;

  const AppKinds({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    if (app.kinds.isEmpty) {
      return SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: 'Supported Event Kinds'),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: app.kinds.map((kind) {
            return Chip(label: Text('$kind'), shape: StadiumBorder());
          }).toList(),
        ),
        SizedBox(height: 24),
      ],
    );
  }
}

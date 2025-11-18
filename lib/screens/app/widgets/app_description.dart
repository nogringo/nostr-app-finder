import 'package:flutter/material.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';
import 'package:nostr_app_finder/screens/app/widgets/section_title.dart';

class AppDescription extends StatelessWidget {
  final NostrApp app;

  const AppDescription({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    if (app.description == null || app.description!.isEmpty) {
      return SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: 'Description'),
        SizedBox(height: 8),
        Text(app.description!, style: Theme.of(context).textTheme.bodyLarge),
        SizedBox(height: 24),
      ],
    );
  }
}

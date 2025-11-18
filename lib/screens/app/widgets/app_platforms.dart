import 'package:flutter/material.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';
import 'package:nostr_app_finder/screens/app/widgets/section_title.dart';

class AppPlatforms extends StatelessWidget {
  final NostrApp app;

  const AppPlatforms({super.key, required this.app});

  @override
  Widget build(BuildContext context) {
    if (app.platforms.isEmpty) {
      return SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title: 'Platforms'),
        SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: app.platforms.map((platform) {
            return Chip(
              avatar: Icon(_getPlatformIcon(platform), size: 16),
              label: Text(platform.toUpperCase()),
              shape: StadiumBorder(),
            );
          }).toList(),
        ),
        SizedBox(height: 24),
      ],
    );
  }

  IconData _getPlatformIcon(String platform) {
    switch (platform.toLowerCase()) {
      case 'web':
        return Icons.language;
      case 'ios':
        return Icons.phone_iphone;
      case 'android':
        return Icons.android;
      case 'desktop':
        return Icons.desktop_windows;
      case 'mobile':
        return Icons.phone_android;
      case 'linux':
        return Icons.computer;
      case 'macos':
        return Icons.laptop_mac;
      case 'windows':
        return Icons.window;
      default:
        return Icons.devices;
    }
  }
}

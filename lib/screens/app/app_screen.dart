import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nostr_app_finder/repository.dart';
import 'package:nostr_app_finder/screens/app/app_controller.dart';
import 'package:nostr_app_finder/utils/nip19/nip19.dart';
import 'package:nostr_app_finder_sdk/nostr_app_finder_sdk.dart';
import 'package:nostr_widgets/nostr_widgets.dart';
import 'package:toastification/toastification.dart';
import 'package:url_launcher/url_launcher.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AppController());
    final controller = AppController.to;

    return Scaffold(
      appBar: AppBar(
        title: Obx(() {
          final app = controller.app.value;
          return Text(app?.name ?? 'App Details');
        }),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.errorMessage.value.isNotEmpty) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error_outline, size: 64, color: Colors.red),
                SizedBox(height: 16),
                Text(
                  controller.errorMessage.value,
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }

        final app = controller.app.value;
        if (app == null) {
          return const Center(child: Text('App not found'));
        }

        return SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1200),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // App header with icon and name
                    LayoutBuilder(
                      builder: (context, constraints) {
                        final isMobile = constraints.maxWidth < 600;

                        if (isMobile) {
                          return Column(
                            children: [
                              if (app.picture != null)
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    app.picture!,
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return _buildDefaultIcon(
                                        app.name,
                                        size: 120,
                                      );
                                    },
                                  ),
                                )
                              else
                                _buildDefaultIcon(app.name, size: 120),
                              SizedBox(height: 16),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    app.name,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.headlineMedium,
                                    textAlign: TextAlign.center,
                                  ),
                                  if (app.identifier != null) ...[
                                    SizedBox(height: 4),
                                    Text(
                                      app.identifier!,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall,
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ],
                              ),
                            ],
                          );
                        }

                        return Row(
                          children: [
                            if (app.picture != null)
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                  app.picture!,
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) {
                                    return _buildDefaultIcon(app.name);
                                  },
                                ),
                              )
                            else
                              _buildDefaultIcon(app.name),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    app.name,
                                    style: Theme.of(
                                      context,
                                    ).textTheme.headlineMedium,
                                  ),
                                  if (app.identifier != null) ...[
                                    SizedBox(height: 4),
                                    Text(
                                      app.identifier!,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall,
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    SizedBox(height: 16),

                    // Action Buttons
                    _buildActionButtons(context, app),
                    SizedBox(height: 24),

                    // Description
                    if (app.description != null &&
                        app.description!.isNotEmpty) ...[
                      _buildSectionTitle(context, 'Description'),
                      SizedBox(height: 8),
                      Text(
                        app.description!,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      SizedBox(height: 24),
                    ],

                    // Website
                    if (app.web != null) ...[
                      _buildSectionTitle(context, 'Website'),
                      SizedBox(height: 8),
                      InkWell(
                        onTap: () {
                          Clipboard.setData(ClipboardData(text: app.web!));
                          toastification.show(
                            context: context,
                            type: ToastificationType.success,
                            style: ToastificationStyle.minimal,
                            title: Text('Website URL copied to clipboard'),
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

                    // Platforms
                    if (app.platforms.isNotEmpty) ...[
                      _buildSectionTitle(context, 'Platforms'),
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

                    // Supported Event Kinds
                    if (app.kinds.isNotEmpty) ...[
                      _buildSectionTitle(context, 'Supported Event Kinds'),
                      SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: app.kinds.map((kind) {
                          return Chip(
                            label: Text('$kind'),
                            shape: StadiumBorder(),
                          );
                        }).toList(),
                      ),
                      SizedBox(height: 24),
                    ],

                    // Tags
                    if (app.tags.isNotEmpty) ...[
                      _buildSectionTitle(context, 'Tags'),
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

                    // Publisher Information
                    _buildSectionTitle(context, 'Publisher'),
                    SizedBox(height: 12),
                    _buildPublisherInfo(context, app.event.pubKey),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildDefaultIcon(String name, {double size = 80}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          name.isNotEmpty ? name[0].toUpperCase() : '?',
          style: TextStyle(
            fontSize: size * 0.4,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade900,
          ),
        ),
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context, NostrApp app) {
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

    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () => _launchUrl(nostrhubUrl),
            icon: Icon(Icons.open_in_new),
            label: Text('View on nostrhub.io'),
            style: OutlinedButton.styleFrom(shape: StadiumBorder()),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () => _launchUrl(nostrappUrl),
            icon: Icon(Icons.open_in_new),
            label: Text('View on nostrapp.link'),
            style: OutlinedButton.styleFrom(shape: StadiumBorder()),
          ),
        ),
      ],
    );
  }

  Future<void> _launchUrl(String urlString) async {
    final url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  Widget _buildPublisherInfo(BuildContext context, String pubkey) {
    final ndk = Repository.ndk;
    final npub = Nip19.encodePubKey(pubkey);
    final shortNpub =
        '${npub.substring(0, 12)}...${npub.substring(npub.length - 8)}';

    return Row(
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
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
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
      ],
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
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

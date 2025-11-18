import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nostr_app_finder/screens/app/app_controller.dart';
import 'package:toastification/toastification.dart';

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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // App header with icon and name
                Row(
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
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          if (app.identifier != null) ...[
                            SizedBox(height: 4),
                            Text(
                              app.identifier!,
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24),

                // Description
                if (app.description != null && app.description!.isNotEmpty) ...[
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
                        label: Text('Kind $kind'),
                        backgroundColor:
                            Theme.of(context).colorScheme.secondaryContainer,
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
                      return Chip(
                        label: Text('#$tag'),
                        backgroundColor:
                            Theme.of(context).colorScheme.tertiaryContainer,
                      );
                    }).toList(),
                  ),
                  SizedBox(height: 24),
                ],

                // Event Information
                _buildSectionTitle(context, 'Event Information'),
                SizedBox(height: 8),
                _buildInfoRow(
                  context,
                  'Event ID',
                  app.event.id,
                  copyable: true,
                ),
                _buildInfoRow(
                  context,
                  'Publisher',
                  app.event.pubKey,
                  copyable: true,
                ),
                _buildInfoRow(
                  context,
                  'Created',
                  DateTime.fromMillisecondsSinceEpoch(
                    app.event.createdAt * 1000,
                  ).toString().split('.')[0],
                ),
                SizedBox(height: 24),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _buildDefaultIcon(String name) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Text(
          name.isNotEmpty ? name[0].toUpperCase() : '?',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade900,
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
    );
  }

  Widget _buildInfoRow(
    BuildContext context,
    String label,
    String value, {
    bool copyable = false,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Expanded(
            child: copyable
                ? InkWell(
                    onTap: () {
                      Clipboard.setData(ClipboardData(text: value));
                      toastification.show(
                        context: context,
                        type: ToastificationType.success,
                        style: ToastificationStyle.minimal,
                        title: Text('$label copied to clipboard'),
                        alignment: Alignment.bottomRight,
                        autoCloseDuration: const Duration(seconds: 3),
                      );
                    },
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            value,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                        Icon(Icons.copy, size: 16),
                      ],
                    ),
                  )
                : Text(value),
          ),
        ],
      ),
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

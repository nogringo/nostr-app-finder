import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nostr_app_finder/screens/app/app_controller.dart';
import 'package:nostr_app_finder/screens/app/widgets/app_description.dart';
import 'package:nostr_app_finder/screens/app/widgets/app_website.dart';
import 'package:nostr_app_finder/screens/app/widgets/app_platforms.dart';
import 'package:nostr_app_finder/screens/app/widgets/app_kinds.dart';
import 'package:nostr_app_finder/screens/app/widgets/app_tags.dart';
import 'package:nostr_app_finder/screens/app/widgets/app_publisher.dart';
import 'package:nostr_app_finder/screens/app/widgets/action_buttons.dart';

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
          if (app == null) {
            return Text('App Details');
          }

          return Row(
            children: [
              if (app.picture != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    app.picture!,
                    width: 32,
                    height: 32,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return _buildAppBarIcon(context, app.name);
                    },
                  ),
                )
              else
                _buildAppBarIcon(context, app.name),
              SizedBox(width: 12),
              Expanded(child: Text(app.name, overflow: TextOverflow.ellipsis)),
            ],
          );
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

        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 800),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppDescription(app: app),
                          AppWebsite(app: app),
                          AppPlatforms(app: app),
                          AppKinds(app: app),
                          AppTags(app: app),
                          AppPublisher(pubkey: app.event.pubKey),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                border: Border(
                  top: BorderSide(
                    color: Theme.of(
                      context,
                    ).colorScheme.outline.withValues(alpha: 0.2),
                  ),
                ),
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 800),
                  child: ActionButtons(app: app),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  Widget _buildAppBarIcon(BuildContext context, String name) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          name.isNotEmpty ? name[0].toUpperCase() : '?',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade900,
          ),
        ),
      ),
    );
  }
}

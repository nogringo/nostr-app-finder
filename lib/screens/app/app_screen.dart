import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nostr_app_finder/screens/app/app_controller.dart';
import 'package:nostr_app_finder/screens/app/layouts/single_column_layout.dart';
import 'package:nostr_app_finder/screens/app/layouts/two_column_layout.dart';

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
              constraints: BoxConstraints(maxWidth: 1400),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final isWideScreen = constraints.maxWidth >= 900;

                    if (isWideScreen) {
                      return TwoColumnLayout(app: app);
                    }

                    return SingleColumnLayout(app: app);
                  },
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

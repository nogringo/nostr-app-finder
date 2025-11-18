import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nostr_app_finder/screens/browse/browse_controller.dart';
import 'package:nostr_app_finder/screens/browse/layouts/large_layout.dart';
import 'package:nostr_app_finder/screens/browse/layouts/small_layout.dart';

class BrowseScreen extends StatelessWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(BrowseController());
    return LayoutBuilder(
      builder: (context, constraints) {
        // Use large layout for screens wider than 900px
        if (constraints.maxWidth > 900) {
          return LargeLayout();
        } else {
          return SmallLayout();
        }
      },
    );
  }
}

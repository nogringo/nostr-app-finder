import 'package:flutter/material.dart';
import 'package:nostr_app_finder/screens/browse/browse_controller.dart';

class SearchBarView extends StatelessWidget {
  const SearchBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: BrowseController.to.searchController,
      decoration: InputDecoration(
        hintText: "Search",
        prefixIcon: Icon(Icons.search),
        suffixIcon: TextButton(
          onPressed: BrowseController.to.searchChanged,
          child: Text("Search"),
        ),
        border: InputBorder.none,
      ),
      onSubmitted: (_) => BrowseController.to.searchChanged(),
    );
  }
}

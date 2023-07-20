import 'package:flutter/material.dart';

import 'custom_item.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (contex, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: CustomItem(),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'anime_label_widget.dart';

class AnimeLabelsRowWidget extends StatelessWidget {
  const AnimeLabelsRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      spacing: 12,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimeLabelWidget(label: "Dark Fantasy"),
        AnimeLabelWidget(label: "Action"),
        AnimeLabelWidget(label: "Adventure"),
      ],
    );
  }
}

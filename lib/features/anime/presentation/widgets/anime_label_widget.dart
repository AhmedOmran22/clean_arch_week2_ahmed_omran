import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class AnimeLabelWidget extends StatelessWidget {
  const AnimeLabelWidget({super.key, required this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(color: Colors.black26, offset: Offset(0, 4), blurRadius: 4),
        ],
        color: const Color(0xff554a71),
        borderRadius: BorderRadius.circular(36),
      ),
      child: Text(
        label,
        style: AppStyles.style12Medium.copyWith(color: Colors.white),
      ),
    );
  }
}

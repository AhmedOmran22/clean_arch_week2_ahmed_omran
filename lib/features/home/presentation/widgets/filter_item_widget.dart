import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class FilterItemWidget extends StatelessWidget {
  const FilterItemWidget({
    super.key,
    required this.isSelected,
    required this.title,
  });
  final bool isSelected;
  final String title;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.only(right: 4),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryColor : Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        title,
        style: AppStyles.style14Bold.copyWith(
          color: isSelected ? Colors.white : AppColors.primaryColor,
        ),
      ),
    );
  }
}

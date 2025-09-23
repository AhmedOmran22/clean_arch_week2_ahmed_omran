import 'package:clean_arch_week2_ahmed_omran/features/upgrade_plan/data/models/upgrade_plan_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class UpgradePlanItemWidget extends StatelessWidget {
  const UpgradePlanItemWidget({
    super.key,
    required this.isSelected,
    required this.upgradePlanModel,
  });
  final bool isSelected;
  final UpgradePlanModel upgradePlanModel;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(bottom: 16),
      duration: const Duration(milliseconds: 300),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xff18153f) : Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AppAssets.imagesFilesFolders),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                upgradePlanModel.title,
                style: AppStyles.style16Regular.copyWith(
                  fontWeight: FontWeight.w700,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "${upgradePlanModel.price} USD",
                      style: AppStyles.style14Bold.copyWith(
                        color: isSelected ? Colors.white : Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "/${upgradePlanModel.period}",
                      style: AppStyles.style14Bold.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Text(
                "Include Family Sharing",
                style: AppStyles.style12Regular.copyWith(
                  color: Colors.grey,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const SizedBox(),
          Container(
            margin: const EdgeInsets.only(bottom: 48),
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              border: Border.all(width: 1.5, color: const Color(0xff18153f)),
              color: isSelected ? AppColors.primaryColor : Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: isSelected
                ? const Icon(Icons.check, color: Colors.black, size: 20)
                : null,
          ),
        ],
      ),
    );
  }
}

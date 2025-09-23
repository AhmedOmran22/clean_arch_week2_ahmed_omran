
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/utils/app_assets.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_action_button_widget.dart';

class CustomBottomNavigationBarButtonsWidget extends StatelessWidget {
  const CustomBottomNavigationBarButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      alignment: Alignment.topCenter,
      height: 10.h,
      color: const Color(0xff16103c),
      child: const Row(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomActionButtonWidget(
            label: "Preview",
            svgImage: AppAssets.imagesPerview,
            color: Color(0xff554a71),
          ),
          CustomActionButtonWidget(
            label: "Watch Now",
            svgImage: AppAssets.imagesEye,
            color: AppColors.primaryColor,
          ),
        ],
      ),
    );
  }
}

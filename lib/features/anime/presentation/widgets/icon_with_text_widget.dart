
import 'package:clean_arch_week2_ahmed_omran/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_assets.dart';

class IconWithTextWidget extends StatelessWidget {
  const IconWithTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(AppAssets.imagesEye),
        Text(
          "2.3M views",
          style: AppStyles.style14Regular.copyWith(
            color: Colors.white,
            fontFamily: "Inter",
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/utils/app_assets.dart';

class BackgroundStarImage extends StatelessWidget {
  const BackgroundStarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Image.asset(
        AppAssets.imagesTheStar,
        height: 40.h,
        fit: BoxFit.fill,
      ),
    );
  }
}

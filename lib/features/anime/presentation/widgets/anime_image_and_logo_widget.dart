
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/utils/app_assets.dart';

class AnimeImageAndLogoWidget extends StatelessWidget {
  const AnimeImageAndLogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          AppAssets.imagesDemonSlayer,
          height: 65.h,
          width: 100.w,
          fit: BoxFit.fill,
        ),

        Positioned(
          bottom: -15.h,
          left: 0,
          right: 0,
          child: Image.asset(AppAssets.imagesDemonLogo),
        ),
      ],
    );
  }
}

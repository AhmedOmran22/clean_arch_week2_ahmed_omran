
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class BottomNavigationBarItemWidget extends StatelessWidget {
  const BottomNavigationBarItemWidget({
    super.key,
    required this.svgImage,
    required this.color,
  });
  final String svgImage;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      width: 17.sp,
      height: 17.sp,
      svgImage,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}

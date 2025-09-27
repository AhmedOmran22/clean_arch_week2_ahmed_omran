import 'package:clean_arch_week2_ahmed_omran/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class IconWithTextWidget extends StatelessWidget {
  const IconWithTextWidget({
    super.key,
    required this.svgImage,
    required this.text,
  });
  final String svgImage;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(svgImage),
        Text(
          text,
          style: AppStyles.style14Regular.copyWith(
            color: Colors.white,
            fontFamily: "Inter",
          ),
        ),
      ],
    );
  }
}

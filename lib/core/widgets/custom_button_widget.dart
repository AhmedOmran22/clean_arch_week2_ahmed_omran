
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import '../utils/app_styles.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({super.key, required this.label, required this.svgImage, required this.color});
  final String label;
  final String svgImage;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.w,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(36),
      ),
      child: Row(
        spacing: 4,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(svgImage),
          Text(
            label,
            style: AppStyles.style15Regular.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

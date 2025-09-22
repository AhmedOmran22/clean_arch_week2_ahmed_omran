import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/models/anime_model.dart';

class AnimeItemWidget extends StatelessWidget {
  const AnimeItemWidget({super.key, required this.animeModel});
  final AnimeModel animeModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  animeModel.image,
                  height: 28.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        size: 16,
                        Icons.star,
                        color: AppColors.primaryColor,
                      ),
                      Text(
                        animeModel.rating.toString(),
                        style: AppStyles.style12Medium,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(animeModel.name, style: AppStyles.style14Bold),
          const SizedBox(height: 4),
          Text(
            animeModel.kind,
            style: AppStyles.style12Medium.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

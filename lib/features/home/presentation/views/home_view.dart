import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/utils/app_styles.dart';
import '../../../anime/presentation/widgets/anime_list_view_builder.dart';
import '../widgets/background_star_image.dart';
import '../widgets/filter_item_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(
            height: 60.h,
            child: Stack(
              children: [
                const BackgroundStarImage(),
                Positioned(
                  top: 7.h,
                  left: 5.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Where Anime Comes Alive",
                        style: AppStyles.style22Bold,
                      ),
                      const SizedBox(height: 16),
                      const FilterItemListViewBuilder(),
                      const SizedBox(height: 20),
                      const AnimeListViewBuilder(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

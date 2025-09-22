import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/utils/app_styles.dart';
import '../widgets/background_star_image.dart';
import '../widgets/filter_item_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40.h,
            child: Stack(
              children: [
                const BackgroundStarImage(),
                Positioned(
                  top: 7.h,
                  left: 5.w,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Where Anime Comes Alive",
                        style: AppStyles.style22Bold,
                      ),
                      const SizedBox(height: 10),
                      const FilterItemListViewBuilder(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
